.class public Lcom/tencent/turingfd/sdk/ams/ad/if;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:I

.field public i:J

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/if;->type:Ljava/lang/String;

    return-void
.end method
