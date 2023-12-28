import articles from '../data/data.json'

const LOAD_ARTICLES = 'article/loadArticles'

export function loadArticles() {
    return {
        type: LOAD_ARTICLES,
        articles  
    }
}



const initialState = {
    entries: [],
    isLoading: true
}


function articleReducer(state = initialState, action) {
    switch(action.type) {
        case LOAD_ARTICLES:
            return {...state, entries: [...action.articles]}
            break;
        default: 
            return state;
    }
};

export default articleReducer