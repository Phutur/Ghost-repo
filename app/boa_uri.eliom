(* Collection of Uri's *)

let make_simple url =
  let service =
    Eliom_service.Http.external_service
      ~prefix:url
      ~path:[]
      ~get_params:Eliom_parameter.unit
      ()
  in Eliom_content.Html5.D.make_uri
       ~service:service
       ()

(* Retreive url of a gravatar picture *)
let gravatar ?(width=100) ?(default="identicon") mail =
  Eliom_content.Html5.F.make_uri
    ~service:(Boa_services.Common.Gravatar.get mail)
    (width, default)

    
