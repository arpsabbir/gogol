{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Read
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the contents of a FHIR resource. Implements the FHIR standard read
-- interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#read),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#read),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#read)).
-- Also supports the FHIR standard conditional read interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#cread),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#cread),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#cread))
-- specified by supplying an \`If-Modified-Since\` header with a date\/time
-- value or an \`If-None-Match\` header with an ETag value. On success, the
-- response body will contain a JSON-encoded representation of the
-- resource. Errors generated by the FHIR store will contain a JSON-encoded
-- \`OperationOutcome\` resource describing the reason for the error. If
-- the request cannot be mapped to a valid API method on a FHIR store, a
-- generic GCP error might be returned instead. For samples that show how
-- to call \`read\`, see [Getting a FHIR
-- resource](\/healthcare\/docs\/how-tos\/fhir-resources#getting_a_fhir_resource).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.read@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Read
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirReadResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirRead
    , ProjectsLocationsDataSetsFhirStoresFhirRead

    -- * Request Lenses
    , pldsfsfrXgafv
    , pldsfsfrUploadProtocol
    , pldsfsfrAccessToken
    , pldsfsfrUploadType
    , pldsfsfrName
    , pldsfsfrCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.read@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirRead' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirReadResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Gets the contents of a FHIR resource. Implements the FHIR standard read
-- interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#read),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#read),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#read)).
-- Also supports the FHIR standard conditional read interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#cread),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#cread),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#cread))
-- specified by supplying an \`If-Modified-Since\` header with a date\/time
-- value or an \`If-None-Match\` header with an ETag value. On success, the
-- response body will contain a JSON-encoded representation of the
-- resource. Errors generated by the FHIR store will contain a JSON-encoded
-- \`OperationOutcome\` resource describing the reason for the error. If
-- the request cannot be mapped to a valid API method on a FHIR store, a
-- generic GCP error might be returned instead. For samples that show how
-- to call \`read\`, see [Getting a FHIR
-- resource](\/healthcare\/docs\/how-tos\/fhir-resources#getting_a_fhir_resource).
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirRead' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirRead =
  ProjectsLocationsDataSetsFhirStoresFhirRead'
    { _pldsfsfrXgafv          :: !(Maybe Xgafv)
    , _pldsfsfrUploadProtocol :: !(Maybe Text)
    , _pldsfsfrAccessToken    :: !(Maybe Text)
    , _pldsfsfrUploadType     :: !(Maybe Text)
    , _pldsfsfrName           :: !Text
    , _pldsfsfrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirRead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfrXgafv'
--
-- * 'pldsfsfrUploadProtocol'
--
-- * 'pldsfsfrAccessToken'
--
-- * 'pldsfsfrUploadType'
--
-- * 'pldsfsfrName'
--
-- * 'pldsfsfrCallback'
projectsLocationsDataSetsFhirStoresFhirRead
    :: Text -- ^ 'pldsfsfrName'
    -> ProjectsLocationsDataSetsFhirStoresFhirRead
projectsLocationsDataSetsFhirStoresFhirRead pPldsfsfrName_ =
  ProjectsLocationsDataSetsFhirStoresFhirRead'
    { _pldsfsfrXgafv = Nothing
    , _pldsfsfrUploadProtocol = Nothing
    , _pldsfsfrAccessToken = Nothing
    , _pldsfsfrUploadType = Nothing
    , _pldsfsfrName = pPldsfsfrName_
    , _pldsfsfrCallback = Nothing
    }


-- | V1 error format.
pldsfsfrXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirRead (Maybe Xgafv)
pldsfsfrXgafv
  = lens _pldsfsfrXgafv
      (\ s a -> s{_pldsfsfrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfrUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirRead (Maybe Text)
pldsfsfrUploadProtocol
  = lens _pldsfsfrUploadProtocol
      (\ s a -> s{_pldsfsfrUploadProtocol = a})

-- | OAuth access token.
pldsfsfrAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirRead (Maybe Text)
pldsfsfrAccessToken
  = lens _pldsfsfrAccessToken
      (\ s a -> s{_pldsfsfrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfrUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirRead (Maybe Text)
pldsfsfrUploadType
  = lens _pldsfsfrUploadType
      (\ s a -> s{_pldsfsfrUploadType = a})

-- | The name of the resource to retrieve.
pldsfsfrName :: Lens' ProjectsLocationsDataSetsFhirStoresFhirRead Text
pldsfsfrName
  = lens _pldsfsfrName (\ s a -> s{_pldsfsfrName = a})

-- | JSONP
pldsfsfrCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirRead (Maybe Text)
pldsfsfrCallback
  = lens _pldsfsfrCallback
      (\ s a -> s{_pldsfsfrCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirRead
         where
        type Rs ProjectsLocationsDataSetsFhirStoresFhirRead =
             HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirRead
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirRead'{..}
          = go _pldsfsfrName _pldsfsfrXgafv
              _pldsfsfrUploadProtocol
              _pldsfsfrAccessToken
              _pldsfsfrUploadType
              _pldsfsfrCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirReadResource)
                      mempty
