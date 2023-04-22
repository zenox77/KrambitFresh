const regged = [];

function RegisterInterfaceCallback(name, cb) {
    AddEventHandler(`_apx_uiReq:${name}`, cb);

    if (GetResourceState('qb-interface') === 'started') exports['qb-interface'].RegisterInterfaceEvent(name);

    regged.push(name);
}

function SendInterfaceMessage(data) {
    exports['qb-interface'].SendInterfaceMessage(data);
}

function SetInterfaceFocus(hasFocus, hasCursor) {
    exports['qb-interface'].SetInterfaceFocus(hasFocus, hasCursor);
}

function GetInterfaceFocus() {
    return exports['qb-interface'].GetInterfaceFocus();
}

AddEventHandler('_npx_uiReady', () => {
    regged.forEach((eventName) => exports['qb-interface'].RegisterInterfaceEvent(eventName));
});