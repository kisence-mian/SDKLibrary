.class final Lcom/taptap/sdk/IscTapLoginService$b;
.super Ljava/lang/Object;
.source "IscTapLoginService.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/IscTapLoginService;->getTestQualificationAsync()Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/taptap/sdk/IscTapLoginService$b$a;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/IscTapLoginService$b$a;-><init>(Lcom/taptap/sdk/IscTapLoginService$b;Lcom/tds/common/reactor/Subscriber;)V

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->getTestQualification(Lcom/taptap/sdk/net/Api$ApiCallback;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/IscTapLoginService$b;->a(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
