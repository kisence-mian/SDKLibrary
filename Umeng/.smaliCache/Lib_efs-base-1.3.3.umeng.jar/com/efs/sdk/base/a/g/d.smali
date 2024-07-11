.class public final Lcom/efs/sdk/base/a/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/g/d$a;
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/a/g/a;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/efs/sdk/base/a/g/c;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/g/d;->a:Lcom/efs/sdk/base/a/g/a;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/d;-><init>()V

    return-void
.end method
