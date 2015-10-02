{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GamesConfiguration.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GamesConfiguration.Types
    (
    -- * Service URL
      gamesConfigurationURL

    -- * ImageConfiguration
    , ImageConfiguration
    , imageConfiguration
    , icResourceId
    , icKind
    , icURL
    , icImageType

    -- * LeaderboardConfigurationListResponse
    , LeaderboardConfigurationListResponse
    , leaderboardConfigurationListResponse
    , lclrNextPageToken
    , lclrKind
    , lclrItems

    -- * GamesNumberAffixConfiguration
    , GamesNumberAffixConfiguration
    , gamesNumberAffixConfiguration
    , gnacFew
    , gnacOther
    , gnacTwo
    , gnacOne
    , gnacZero
    , gnacMany

    -- * AchievementConfigurationListResponse
    , AchievementConfigurationListResponse
    , achievementConfigurationListResponse
    , aclrNextPageToken
    , aclrKind
    , aclrItems

    -- * LeaderboardConfiguration
    , LeaderboardConfiguration
    , leaderboardConfiguration
    , lcScoreMax
    , lcKind
    , lcPublished
    , lcToken
    , lcScoreMin
    , lcDraft
    , lcId
    , lcScoreOrder

    -- * AchievementConfiguration
    , AchievementConfiguration
    , achievementConfiguration
    , acAchievementType
    , acStepsToUnlock
    , acKind
    , acPublished
    , acToken
    , acInitialState
    , acDraft
    , acId

    -- * LocalizedString
    , LocalizedString
    , localizedString
    , lsKind
    , lsLocale
    , lsValue

    -- * GamesNumberFormatConfiguration
    , GamesNumberFormatConfiguration
    , gamesNumberFormatConfiguration
    , gnfcSuffix
    , gnfcCurrencyCode
    , gnfcNumberFormatType
    , gnfcNumDecimalPlaces

    -- * GamesConfigurationImageConfigurationsUploadImageType
    , GamesConfigurationImageConfigurationsUploadImageType (..)

    -- * LeaderboardConfigurationDetail
    , LeaderboardConfigurationDetail
    , leaderboardConfigurationDetail
    , lcdKind
    , lcdScoreFormat
    , lcdSortRank
    , lcdName
    , lcdIconURL

    -- * LocalizedStringBundle
    , LocalizedStringBundle
    , localizedStringBundle
    , lsbKind
    , lsbTranslations

    -- * AchievementConfigurationDetail
    , AchievementConfigurationDetail
    , achievementConfigurationDetail
    , acdKind
    , acdSortRank
    , acdName
    , acdPointValue
    , acdIconURL
    , acdDescription
    ) where

import           Network.Google.GamesConfiguration.Types.Product
import           Network.Google.GamesConfiguration.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1configuration' of the Google Play Game Services Publishing API.
gamesConfigurationURL :: BaseUrl
gamesConfigurationURL
  = BaseUrl Https
      "https://www.googleapis.com/games/v1configuration/"
      443