.class public abstract Lcom/qq/gdt/action/d/a/b;
.super Lcom/qq/gdt/action/d/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/gdt/action/d/a/a",
        "<",
        "Lcom/qq/gdt/action/d/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/d/a/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/qq/gdt/action/d/b/i;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/d/a/b;->c(Lcom/qq/gdt/action/d/b/i;)Lcom/qq/gdt/action/d/a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/qq/gdt/action/d/b/i;)Lcom/qq/gdt/action/d/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, -0x1

    new-instance v0, Lcom/qq/gdt/action/d/a;

    const-string v1, "Unknown message"

    invoke-direct {v0, v3, v1}, Lcom/qq/gdt/action/d/a;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/i;->e()Lcom/qq/gdt/action/d/b/j;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/qq/gdt/action/d/b/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ret"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/a;->a(I)V

    const-string v1, "msg"

    const-string v3, "Unknown message"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/a;->a(Ljava/lang/String;)V

    :cond_33
    return-object v0
.end method
