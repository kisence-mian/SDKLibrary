.class Lcom/tapsdk/bootstrap/TapBootstrapImpl$5;
.super Ljava/lang/Object;
.source "TapBootstrapImpl.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/bootstrap/TapBootstrapImpl;->initTrackerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/bootstrap/TapBootstrapImpl;


# direct methods
.method constructor <init>(Lcom/tapsdk/bootstrap/TapBootstrapImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    .line 352
    iput-object p1, p0, Lcom/tapsdk/bootstrap/TapBootstrapImpl$5;->this$0:Lcom/tapsdk/bootstrap/TapBootstrapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 352
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/tapsdk/bootstrap/TapBootstrapImpl$5;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 355
    return-void
.end method
