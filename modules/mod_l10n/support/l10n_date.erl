%% @author Arjan Scherpenisse <arjan@scherpenisse.net>
%% @doc Provides strings for localization of dates.
%% @copyright 2011 Arjan Scherpenisse

-module(l10n_date).
-author("Arjan Scherpenisse <arjan@scherpenisse.net>").

-include_lib("zotonic.hrl").

-export([
         label/2,
         dayname/2,
         monthname/2,
         monthname_short/2
]).

%% @doc Provide some localized date strings
%% @spec label(midnight|noon, #context{}) -> string()
label(midnight, Context) ->
    ?__("midnight", Context);
label(noon, Context) ->
    ?__("noon", Context).

%% @doc Provide localized versions of the day of the week.
dayname(1, Context) -> ?__("Segunda", Context);
dayname(2, Context) -> ?__("Terça", Context);
dayname(3, Context) -> ?__("Quarta", Context);
dayname(4, Context) -> ?__("Quinta", Context);
dayname(5, Context) -> ?__("Sexta", Context);
dayname(6, Context) -> ?__("Sábado", Context);
dayname(7, Context) -> ?__("Domingo", Context);
dayname(_, _Context) -> "???".

%% @doc Provide localized versions of month names.
monthname(1, Context) ->  ?__("Janeiro", Context);
monthname(2, Context) ->  ?__("Fevereiro", Context);
monthname(3, Context) ->  ?__("Março", Context);
monthname(4, Context) ->  ?__("Abril", Context);
monthname(5, Context) ->  ?__("Maio", Context);
monthname(6, Context) ->  ?__("Junho", Context);
monthname(7, Context) ->  ?__("Julho", Context);
monthname(8, Context) ->  ?__("Agosto", Context);
monthname(9, Context) ->  ?__("Setembro", Context);
monthname(10, Context) -> ?__("Outubro", Context);
monthname(11, Context) -> ?__("Novembro", Context);
monthname(12, Context) -> ?__("Dezembro", Context);
monthname(_, _Context) -> "???".

%% @doc Provide localized short versions of month names.
monthname_short(1, Context) ->  ?__("Jan", Context);
monthname_short(2, Context) ->  ?__("Fev", Context);
monthname_short(3, Context) ->  ?__("Mar", Context);
monthname_short(4, Context) ->  ?__("Abr", Context);
monthname_short(5, Context) ->  ?__("Mai", Context);
monthname_short(6, Context) ->  ?__("Jun", Context);
monthname_short(7, Context) ->  ?__("Jul", Context);
monthname_short(8, Context) ->  ?__("Ago", Context);
monthname_short(9, Context) ->  ?__("Set", Context);
monthname_short(10, Context) -> ?__("Out", Context);
monthname_short(11, Context) -> ?__("Nov", Context);
monthname_short(12, Context) -> ?__("Dez", Context);
monthname_short(_, _Context) -> "???".

