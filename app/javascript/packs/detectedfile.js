import { Turbo } from "@hotwired/turbo-rails";
Turbo.session.drive = false;

require("controllers");

$(() => {
  // // new AWS URL -- new component to be created
  // $(".provider_logo").attr("src", `https://foo.s3.qwerty.amazonaws.com`);

  // // stripe usage -- existing component to be linked
  // $(".stripe").attr("src", `https://api.stripe.com/${domain}`);
  // $(".stripe-webhooks-example").attr("src", `https://hooks.stripe.com`);

  // // internal api -- existing component to be linked
  // $(".provider_logo").attr(
  //   "src",
  //   `https://api.prod.company.internal/${domain}`
  // );
});
