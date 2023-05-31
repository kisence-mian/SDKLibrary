.class public abstract Lcom/mintegral/msdk/out/LoadListener;
.super Ljava/lang/Object;
.source "LoadListener.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onLoadFaild(Ljava/lang/String;)V
.end method

.method public abstract onLoadSucceed()V
.end method
