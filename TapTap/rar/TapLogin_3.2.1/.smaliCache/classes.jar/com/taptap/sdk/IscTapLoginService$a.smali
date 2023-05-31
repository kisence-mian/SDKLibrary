.class final Lcom/taptap/sdk/IscTapLoginService$a;
.super Ljava/lang/Object;
.source "IscTapLoginService.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/IscTapLoginService;->login(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taptap/sdk/IscTapLoginService$a;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/taptap/sdk/IscTapLoginService$a;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tds/common/reactor/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    const-string p1, "IscTapLoginService"

    const-string v0, "sdkName must not empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_10
    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a;->a:Ljava/lang/String;

    new-instance v1, Lcom/taptap/sdk/IscTapLoginService$a$a;

    invoke-direct {v1, p0, p1}, Lcom/taptap/sdk/IscTapLoginService$a$a;-><init>(Lcom/taptap/sdk/IscTapLoginService$a;Lcom/tds/common/reactor/Subscriber;)V

    invoke-static {v0, v1}, Lcom/taptap/sdk/TapLoginHelper;->addLoginResultCallbackByTag(Ljava/lang/String;Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V

    .line 37
    iget-object p1, p0, Lcom/taptap/sdk/IscTapLoginService$a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/taptap/sdk/IscTapLoginService$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/taptap/sdk/IscTapLoginService$a;->c:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/taptap/sdk/TapLoginHelper;->startTapLoginByTag(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/IscTapLoginService$a;->a(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
