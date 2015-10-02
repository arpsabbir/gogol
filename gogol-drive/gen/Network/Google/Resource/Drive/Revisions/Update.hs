{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Revisions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRevisionsUpdate@.
module Network.Google.Resource.Drive.Revisions.Update
    (
    -- * REST Resource
      RevisionsUpdateResource

    -- * Creating a Request
    , revisionsUpdate'
    , RevisionsUpdate'

    -- * Request Lenses
    , ruQuotaUser
    , ruPrettyPrint
    , ruUserIP
    , ruKey
    , ruFileId
    , ruOAuthToken
    , ruRevision
    , ruRevisionId
    , ruFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRevisionsUpdate@ which the
-- 'RevisionsUpdate'' request conforms to.
type RevisionsUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "revisions" :>
           Capture "revisionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Revision :> Put '[JSON] Revision

-- | Updates a revision.
--
-- /See:/ 'revisionsUpdate'' smart constructor.
data RevisionsUpdate' = RevisionsUpdate'
    { _ruQuotaUser   :: !(Maybe Text)
    , _ruPrettyPrint :: !Bool
    , _ruUserIP      :: !(Maybe Text)
    , _ruKey         :: !(Maybe Key)
    , _ruFileId      :: !Text
    , _ruOAuthToken  :: !(Maybe OAuthToken)
    , _ruRevision    :: !Revision
    , _ruRevisionId  :: !Text
    , _ruFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruQuotaUser'
--
-- * 'ruPrettyPrint'
--
-- * 'ruUserIP'
--
-- * 'ruKey'
--
-- * 'ruFileId'
--
-- * 'ruOAuthToken'
--
-- * 'ruRevision'
--
-- * 'ruRevisionId'
--
-- * 'ruFields'
revisionsUpdate'
    :: Text -- ^ 'fileId'
    -> Revision -- ^ 'Revision'
    -> Text -- ^ 'revisionId'
    -> RevisionsUpdate'
revisionsUpdate' pRuFileId_ pRuRevision_ pRuRevisionId_ =
    RevisionsUpdate'
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruUserIP = Nothing
    , _ruKey = Nothing
    , _ruFileId = pRuFileId_
    , _ruOAuthToken = Nothing
    , _ruRevision = pRuRevision_
    , _ruRevisionId = pRuRevisionId_
    , _ruFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruQuotaUser :: Lens' RevisionsUpdate' (Maybe Text)
ruQuotaUser
  = lens _ruQuotaUser (\ s a -> s{_ruQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruPrettyPrint :: Lens' RevisionsUpdate' Bool
ruPrettyPrint
  = lens _ruPrettyPrint
      (\ s a -> s{_ruPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruUserIP :: Lens' RevisionsUpdate' (Maybe Text)
ruUserIP = lens _ruUserIP (\ s a -> s{_ruUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' RevisionsUpdate' (Maybe Key)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | The ID for the file.
ruFileId :: Lens' RevisionsUpdate' Text
ruFileId = lens _ruFileId (\ s a -> s{_ruFileId = a})

-- | OAuth 2.0 token for the current user.
ruOAuthToken :: Lens' RevisionsUpdate' (Maybe OAuthToken)
ruOAuthToken
  = lens _ruOAuthToken (\ s a -> s{_ruOAuthToken = a})

-- | Multipart request metadata.
ruRevision :: Lens' RevisionsUpdate' Revision
ruRevision
  = lens _ruRevision (\ s a -> s{_ruRevision = a})

-- | The ID for the revision.
ruRevisionId :: Lens' RevisionsUpdate' Text
ruRevisionId
  = lens _ruRevisionId (\ s a -> s{_ruRevisionId = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' RevisionsUpdate' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

instance GoogleAuth RevisionsUpdate' where
        authKey = ruKey . _Just
        authToken = ruOAuthToken . _Just

instance GoogleRequest RevisionsUpdate' where
        type Rs RevisionsUpdate' = Revision
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RevisionsUpdate'{..}
          = go _ruQuotaUser (Just _ruPrettyPrint) _ruUserIP
              _ruKey
              _ruFileId
              _ruOAuthToken
              _ruRevisionId
              _ruFields
              (Just AltJSON)
              _ruRevision
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RevisionsUpdateResource)
                      r
                      u