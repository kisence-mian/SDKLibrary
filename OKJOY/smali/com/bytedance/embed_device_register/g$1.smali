.class final Lcom/bytedance/embed_device_register/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embed_device_register/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embed_device_register/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lcom/bytedance/embed_device_register/g;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 34
    new-instance v1, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/embed_device_register/g;->a(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    .line 35
    return-void
.end method
