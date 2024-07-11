.class final Lcom/anythink/core/common/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/l;->a(Lcom/anythink/core/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/a;

.field final synthetic b:Lcom/anythink/core/common/l;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/l;Lcom/anythink/core/c/a;)V
    .registers 3

    .line 113
    iput-object p1, p0, Lcom/anythink/core/common/l$2;->b:Lcom/anythink/core/common/l;

    iput-object p2, p0, Lcom/anythink/core/common/l$2;->a:Lcom/anythink/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/l$2;->b:Lcom/anythink/core/common/l;

    invoke-static {v0}, Lcom/anythink/core/common/l;->a(Lcom/anythink/core/common/l;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    .line 118
    return-void

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/anythink/core/common/l$2;->b:Lcom/anythink/core/common/l;

    invoke-static {v0}, Lcom/anythink/core/common/l;->a(Lcom/anythink/core/common/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, ""

    .line 122
    const/4 v2, 0x0

    :goto_16
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2d

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 125
    :cond_2d
    invoke-static {v1}, Lcom/anythink/core/common/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/anythink/core/common/l$2;->a:Lcom/anythink/core/c/a;

    invoke-virtual {v3}, Lcom/anythink/core/c/a;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "data"

    invoke-static {}, Lcom/anythink/core/common/g/k;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/anythink/core/common/l$2;->b:Lcom/anythink/core/common/l;

    invoke-static {v0}, Lcom/anythink/core/common/l;->a(Lcom/anythink/core/common/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    .line 135
    return-void

    .line 134
    :catchall_59
    move-exception v0

    .line 136
    return-void
.end method
