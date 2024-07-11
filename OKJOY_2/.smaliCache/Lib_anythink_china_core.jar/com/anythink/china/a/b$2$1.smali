.class final Lcom/anythink/china/a/b$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/api/OaidSDKCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/a/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/a/b$2;


# direct methods
.method constructor <init>(Lcom/anythink/china/a/b$2;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/anythink/china/a/b$2$1;->a:Lcom/anythink/china/a/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .registers 4

    .line 181
    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_7
    const-string p1, ""

    .line 182
    :goto_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1e

    .line 183
    iget-object p2, p0, Lcom/anythink/china/a/b$2$1;->a:Lcom/anythink/china/a/b$2;

    iget-object p2, p2, Lcom/anythink/china/a/b$2;->b:Lcom/anythink/china/a/a;

    if-eqz p2, :cond_2b

    .line 184
    iget-object p2, p0, Lcom/anythink/china/a/b$2$1;->a:Lcom/anythink/china/a/b$2;

    iget-object p2, p2, Lcom/anythink/china/a/b$2;->b:Lcom/anythink/china/a/a;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    return-void

    .line 187
    :cond_1e
    iget-object p1, p0, Lcom/anythink/china/a/b$2$1;->a:Lcom/anythink/china/a/b$2;

    iget-object p1, p1, Lcom/anythink/china/a/b$2;->b:Lcom/anythink/china/a/a;

    if-eqz p1, :cond_2b

    .line 188
    iget-object p1, p0, Lcom/anythink/china/a/b$2$1;->a:Lcom/anythink/china/a/b$2;

    iget-object p1, p1, Lcom/anythink/china/a/b$2;->b:Lcom/anythink/china/a/a;

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    .line 191
    :cond_2b
    return-void
.end method
