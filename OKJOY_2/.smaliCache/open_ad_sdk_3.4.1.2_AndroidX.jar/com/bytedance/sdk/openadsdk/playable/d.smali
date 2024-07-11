.class public Lcom/bytedance/sdk/openadsdk/playable/d;
.super Ljava/lang/Object;
.source "PlayableLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/playable/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/playable/d$a;


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/playable/d$a;)V
    .registers 1

    .line 8
    sput-object p0, Lcom/bytedance/sdk/openadsdk/playable/d;->a:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    .line 9
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/d;->a:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    if-nez v0, :cond_5

    .line 22
    return-void

    .line 24
    :cond_5
    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/playable/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/d;->a:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    if-nez v0, :cond_5

    .line 29
    return-void

    .line 31
    :cond_5
    if-nez p2, :cond_c

    .line 32
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 34
    :cond_c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/d;->a:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/playable/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/d;->a:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
