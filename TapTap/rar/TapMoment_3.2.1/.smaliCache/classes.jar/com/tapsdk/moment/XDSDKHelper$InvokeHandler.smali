.class public abstract Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;
.super Ljava/lang/Object;
.source "XDSDKHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/XDSDKHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InvokeHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 134
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_19

    :try_start_4
    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_19

    .line 135
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V

    goto :goto_1c

    .line 137
    :cond_19
    invoke-virtual {p0, v0, v1}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 142
    :goto_1c
    goto :goto_24

    .line 139
    :catch_1d
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/tapsdk/moment/XDSDKHelper$InvokeHandler;->onResult(ILjava/lang/String;)V

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_24
    return-object v1
.end method

.method public abstract onResult(ILjava/lang/String;)V
.end method
