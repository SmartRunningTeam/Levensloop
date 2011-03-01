-- | Implements an exponential moving average to detect suspicious behaviour
--
module CountVonCount.MovingAverage
    ( MovingAverage
    , updateAverage
    , updateAverageWith
    ) where

-- | Moving average module
--
data MovingAverage a = Empty
                     | MovingAverage !a !a
                     deriving (Show)

-- | Update the moving average with a new sample
--
updateAverage :: Floating a
              => a                -- ^ Sample
              -> MovingAverage a  -- ^ Average to update
              -> MovingAverage a  -- ^ Result
updateAverage = updateAverageWith 0.75 0.8

-- | Version of 'updateAverage' with custom weights
--
updateAverageWith :: Floating a
                  => a                -- ^ Average weight
                  -> a                -- ^ Deviation weight
                  -> a                -- ^ Sample
                  -> MovingAverage a  -- ^ Average to update
                  -> MovingAverage a  -- ^ Result
updateAverageWith _ _ x Empty                   = MovingAverage x x
updateAverageWith a b x (MovingAverage avg dev) = MovingAverage avg' dev'
  where
    avg' = avg * (1 - a) + x * a
    dev' = dev * (1 - b)  + (abs $ avg - x) * b