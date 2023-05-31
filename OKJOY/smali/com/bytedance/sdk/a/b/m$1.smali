.class final Lcom/bytedance/sdk/a/b/m$1;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/s;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/s;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/s;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/s;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method
