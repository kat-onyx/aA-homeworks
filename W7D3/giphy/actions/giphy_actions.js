import * as APIUtil from '../util/api_util';

export const receiveSearchGiphy = giphys => {
    return {
        type: RECEIVE_SEARCH_GIPHYS,
        giphys
    }
}


export const RECEIVE_SEARCH_GIPHYS = 'RECEIVE_SEARCH_GIPHYS';
