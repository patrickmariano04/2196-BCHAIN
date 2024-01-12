function Rainy(){
    
        <h1>Bring your umbrella!</h1>;
}


function Sunny(){
    
        <h1>Bring your Sunglasses!</h1>;
}
const isRainy = true;

function RainOrShine(props){
    const isRainy = props.isRainy;
    return isRainy ? <Rainy /> : <Sunny />;
}

export default function App(){
    return(
        <div className={`${isRainy === true ? 'dark' : 'light'}`}>
            <RainOrShine />
            </div>
            );
}