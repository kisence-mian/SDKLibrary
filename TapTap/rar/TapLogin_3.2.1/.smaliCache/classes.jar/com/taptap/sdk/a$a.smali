.class public Lcom/taptap/sdk/a$a;
.super Ljava/lang/Object;
.source "CallBackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/taptap/sdk/a;
    .registers 1

    .line 1
    new-instance v0, Lcom/taptap/sdk/b;

    invoke-direct {v0}, Lcom/taptap/sdk/b;-><init>()V

    return-object v0
.end method
