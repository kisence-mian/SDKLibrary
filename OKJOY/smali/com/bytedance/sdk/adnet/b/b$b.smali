.class Lcom/bytedance/sdk/adnet/b/b$b;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/adnet/b/b$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Lcom/bytedance/sdk/adnet/b/c;

.field final synthetic f:Lcom/bytedance/sdk/adnet/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)V
    .registers 6

    .prologue
    .line 153
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$b;->f:Lcom/bytedance/sdk/adnet/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/b$b;->b:Ljava/lang/String;

    .line 156
    iput-boolean p5, p0, Lcom/bytedance/sdk/adnet/b/b$b;->d:Z

    .line 157
    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/adnet/b/b$b;->a(Lcom/bytedance/sdk/adnet/b/b$a;)V

    .line 158
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    .line 171
    new-instance v0, Lcom/bytedance/sdk/adnet/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/adnet/b/b$b$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/adnet/b/b$b$1;-><init>(Lcom/bytedance/sdk/adnet/b/b$b;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/adnet/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b;->e:Lcom/bytedance/sdk/adnet/b/c;

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b;->e:Lcom/bytedance/sdk/adnet/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileLoader#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/b/c;->setTag(Ljava/lang/Object;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b;->f:Lcom/bytedance/sdk/adnet/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/b;->b(Lcom/bytedance/sdk/adnet/b/b;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$b;->e:Lcom/bytedance/sdk/adnet/b/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 223
    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/b/b$a;)V
    .registers 3

    .prologue
    .line 161
    if-nez p1, :cond_3

    .line 168
    :goto_2
    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    if-nez v0, :cond_12

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    .line 167
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 242
    instance-of v0, p1, Lcom/bytedance/sdk/adnet/b/b$b;

    if-eqz v0, :cond_f

    .line 243
    check-cast p1, Lcom/bytedance/sdk/adnet/b/b$b;

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 245
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method
