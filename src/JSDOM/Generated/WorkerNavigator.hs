{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WorkerNavigator
       (getWebkitTemporaryStorage, getWebkitPersistentStorage,
        WorkerNavigator(..), gTypeWorkerNavigator)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitTemporaryStorage Mozilla WorkerNavigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorage ::
                          (MonadDOM m) => WorkerNavigator -> m StorageQuota
getWebkitTemporaryStorage self
  = liftDOM
      ((self ^. js "webkitTemporaryStorage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitPersistentStorage Mozilla WorkerNavigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorage ::
                           (MonadDOM m) => WorkerNavigator -> m StorageQuota
getWebkitPersistentStorage self
  = liftDOM
      ((self ^. js "webkitPersistentStorage") >>= fromJSValUnchecked)
