    <div>
        <img src="/img/{{igra.stevilo_napak()}}.jpg" />
    </div>
    <div>
        Pravilni del gesla: {{igra.pravilni_del_gesla()}}
    </div>
    <div>
        Nepravilne črke: {{igra.nepravilni_ugibi()}}
    </div>
% if stanje == ZMAGA or stanje == PORAZ:
    % if stanje == ZMAGA:
        <b>Čestitke, zmagal/a si!</b>
    % else:
        <b>Več sreče prihodnjič! Pravilno geslo je bilo {{igra.geslo}}.</b>
    % end
    <form action="/nova_igra/" method="post">
        <button type="submit">Nova igra</button>
    </form>
% else:
    <form method="post" action="/igra/">
        <input name="crka" /> <input type="submit" value="Ugibaj!">
    </form>
% end

%rebase base naslov='Igra vislic'