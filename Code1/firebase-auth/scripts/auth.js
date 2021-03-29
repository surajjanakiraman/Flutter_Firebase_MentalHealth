//sign up
const signupForm = document.querySelector('#signup-Form');
signupForm.addEventListener('submit',(e)=>{
    e.preventDefault();
    //get user info
    const email = signupForm['signup-email'].value;
    const password = signupForm['signup-password'].value;
    //console.log(email,password)
    //signup the user
    auth.createUserWithEmailAndPassword(email,password).then(cred=>{
        console.log(cred.user)
    })
})