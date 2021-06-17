.class public abstract Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RunnableEx"
.end annotation


# instance fields
.field private mArg:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArg()Ljava/lang/Object;
    .registers 2

    .line 1375
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;->mArg:Ljava/lang/Object;

    return-object v0
.end method

.method public setArg(Ljava/lang/Object;)V
    .registers 2

    .line 1371
    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;->mArg:Ljava/lang/Object;

    .line 1372
    return-void
.end method
