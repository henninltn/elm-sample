module Subscriptions exposing (subscriptions)

import Model exposing (Model, Msg(..))
import Subscriptions.CmdSubSample as CmdSubSample
import Subscriptions.PortsSample as PortsSample


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Sub.map
            PortsSampleMsg
            (PortsSample.subscriptions model.portsSampleModel)
        , Sub.map
            CmdSubSampleMsg
            (CmdSubSample.subscriptions model.cmdSubSampleModel)
        ]
