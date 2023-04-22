const registered = [];

function RegisterUICallback(name, cb) {
    AddEventHandler(`_vui_uiReq:${name}`, cb);

    if (GetResourceState('qb-ui') === 'started') exports['qb-ui'].RegisterUIEvent(name);

    registered.push(name);
}

function SendUIMessage(data) {
    exports['qb-ui'].SendUIMessage(data);
}

function SetUIFocus(hasFocus, hasCursor) {
    exports['qb-ui'].SetUIFocus(hasFocus, hasCursor);
}

function GetUIFocus() {
    return exports['qb-ui'].GetUIFocus();
}

AddEventHandler('_vui_uiReady', () => {
    registered.forEach((eventName) => exports['qb-ui'].RegisterUIEvent(eventName));
});