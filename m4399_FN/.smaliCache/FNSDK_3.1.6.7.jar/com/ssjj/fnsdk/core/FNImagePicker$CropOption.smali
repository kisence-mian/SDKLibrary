.class public Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/FNImagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropOption"
.end annotation


# instance fields
.field public aspectX:I

.field public aspectY:I

.field public crop:Z

.field public outputX:I

.field public outputY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->crop:Z

    iput v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->aspectX:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->aspectY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->outputX:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->outputY:I

    return-void
.end method
