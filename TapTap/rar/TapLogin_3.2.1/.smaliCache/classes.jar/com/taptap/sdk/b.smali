.class Lcom/taptap/sdk/b;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/taptap/sdk/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/b;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/taptap/sdk/b$a;I)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/b;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/b;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/b$a;

    if-eqz p1, :cond_13

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/taptap/sdk/b$a;->a(ILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
