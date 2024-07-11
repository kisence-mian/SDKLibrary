.class final Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IsJavascriptEnabledMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Landroid/view/View;",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .line 1649
    const-class v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    .line 1650
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 2

    .line 1646
    invoke-direct {p0}, Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 1654
    const-string v0, "WebView with JS enabled"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1655
    return-void
.end method

.method public matchesSafely(Landroid/webkit/WebView;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webView"
        }
    .end annotation

    .line 1659
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "webView"
        }
    .end annotation

    .line 1645
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$IsJavascriptEnabledMatcher;->matchesSafely(Landroid/webkit/WebView;)Z

    move-result p1

    return p1
.end method
