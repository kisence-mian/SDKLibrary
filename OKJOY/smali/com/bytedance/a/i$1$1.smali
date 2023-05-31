.class Lcom/bytedance/a/i$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/a/i$1;->a(Lcom/bytedance/a/i$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/a/i$b;

.field final synthetic b:Lcom/bytedance/a/i$1;


# direct methods
.method constructor <init>(Lcom/bytedance/a/i$1;Lcom/bytedance/a/i$b;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bytedance/a/i$1$1;->b:Lcom/bytedance/a/i$1;

    iput-object p2, p0, Lcom/bytedance/a/i$1$1;->a:Lcom/bytedance/a/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bytedance/a/i$1$1;->b:Lcom/bytedance/a/i$1;

    iget-object v0, v0, Lcom/bytedance/a/i$1;->c:Lcom/bytedance/a/i;

    iget-object v1, p0, Lcom/bytedance/a/i$1$1;->a:Lcom/bytedance/a/i$b;

    iput-object v1, v0, Lcom/bytedance/a/i;->a:Lcom/bytedance/a/g$a;

    .line 91
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/a/i$1$1;->b:Lcom/bytedance/a/i$1;

    iget-object v2, v2, Lcom/bytedance/a/i$1;->c:Lcom/bytedance/a/i;

    iget-object v2, v2, Lcom/bytedance/a/i;->a:Lcom/bytedance/a/g$a;

    invoke-virtual {v2}, Lcom/bytedance/a/g$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/a/i$1$1;->b:Lcom/bytedance/a/i$1;

    iget-object v0, v0, Lcom/bytedance/a/i$1;->c:Lcom/bytedance/a/i;

    iget-object v0, v0, Lcom/bytedance/a/i;->b:Lcom/bytedance/a/g$c;

    if-eqz v0, :cond_49

    .line 93
    iget-object v0, p0, Lcom/bytedance/a/i$1$1;->b:Lcom/bytedance/a/i$1;

    iget-object v0, v0, Lcom/bytedance/a/i$1;->c:Lcom/bytedance/a/i;

    iget-object v0, v0, Lcom/bytedance/a/i;->b:Lcom/bytedance/a/g$c;

    iget-object v1, p0, Lcom/bytedance/a/i$1$1;->b:Lcom/bytedance/a/i$1;

    iget-object v1, v1, Lcom/bytedance/a/i$1;->c:Lcom/bytedance/a/i;

    iget-object v1, v1, Lcom/bytedance/a/i;->a:Lcom/bytedance/a/g$a;

    invoke-virtual {v0, v1}, Lcom/bytedance/a/g$c;->a(Lcom/bytedance/a/g$a;)V

    .line 95
    :cond_49
    return-void
.end method
