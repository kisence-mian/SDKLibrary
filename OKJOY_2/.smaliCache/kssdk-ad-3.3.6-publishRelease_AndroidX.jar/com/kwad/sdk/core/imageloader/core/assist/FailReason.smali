.class public Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;
    }
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final type:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;->type:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getType()Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;->type:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    return-object v0
.end method
