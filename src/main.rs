use yew::prelude::*;

#[function_component(App)]
fn app() -> Html {
    html! {
        <>
            <h1>{ "Rust Web Application" }</h1>
            <h2>{"Built with following Requirements:"}</h2>
            <ul>
                <li>{ "Rust" }</li>
                <li>{ "Yew Framework" }</li>
                <li>{ "HTML" }</li>
            </ul>
        </>
    }
}

fn main() {
    yew::Renderer::<App>::new().render();
}
