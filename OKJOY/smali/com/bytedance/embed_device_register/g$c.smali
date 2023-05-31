.class Lcom/bytedance/embed_device_register/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embed_device_register/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embed_device_register/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embed_device_register/g$b",
        "<",
        "Lcom/bytedance/embed_device_register/i$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/embed_device_register/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embed_device_register/h",
            "<",
            "Lcom/bytedance/embed_device_register/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private final c:Lcom/bytedance/embed_device_register/f;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/h;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embed_device_register/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embed_device_register/h",
            "<",
            "Lcom/bytedance/embed_device_register/i$b;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/bytedance/embed_device_register/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/bytedance/embed_device_register/g$c;->a:Lcom/bytedance/embed_device_register/h;

    .line 170
    iput-object p2, p0, Lcom/bytedance/embed_device_register/g$c;->b:Ljava/util/concurrent/CountDownLatch;

    .line 171
    iput-object p3, p0, Lcom/bytedance/embed_device_register/g$c;->c:Lcom/bytedance/embed_device_register/f;

    .line 172
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/embed_device_register/i$b;)V
    .registers 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bytedance/embed_device_register/g$c;->a:Lcom/bytedance/embed_device_register/h;

    iput-object p1, v0, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 176
    if-eqz p1, :cond_11

    .line 177
    invoke-virtual {p1}, Lcom/bytedance/embed_device_register/i$b;->b()Ljava/util/Map;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_11

    .line 179
    iget-object v1, p0, Lcom/bytedance/embed_device_register/g$c;->c:Lcom/bytedance/embed_device_register/f;

    invoke-interface {v1, v0}, Lcom/bytedance/embed_device_register/f;->a(Ljava/util/Map;)V

    .line 182
    :cond_11
    iget-object v0, p0, Lcom/bytedance/embed_device_register/g$c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 183
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 161
    check-cast p1, Lcom/bytedance/embed_device_register/i$b;

    invoke-virtual {p0, p1}, Lcom/bytedance/embed_device_register/g$c;->a(Lcom/bytedance/embed_device_register/i$b;)V

    return-void
.end method
