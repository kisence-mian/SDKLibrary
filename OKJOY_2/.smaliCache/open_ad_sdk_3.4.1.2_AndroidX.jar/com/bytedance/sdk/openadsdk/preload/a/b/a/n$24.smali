.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$24;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 811
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object p1

    .line 812
    const-class p2, Ljava/lang/Enum;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_21

    const-class p2, Ljava/lang/Enum;

    if-ne p1, p2, :cond_11

    goto :goto_21

    .line 815
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-nez p2, :cond_1b

    .line 816
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 818
    :cond_1b
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$a;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$a;-><init>(Ljava/lang/Class;)V

    return-object p2

    .line 813
    :cond_21
    :goto_21
    const/4 p1, 0x0

    return-object p1
.end method
