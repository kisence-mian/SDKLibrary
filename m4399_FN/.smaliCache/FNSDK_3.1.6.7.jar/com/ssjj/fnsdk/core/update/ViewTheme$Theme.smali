.class public final enum Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/update/ViewTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

.field public static final enum theme_orange:Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;


# instance fields
.field public final colorBackground:I

.field public final colorPrimary:I

.field public final colorPrimaryDark:I

.field public final colorPrimaryShallow:I

.field public final colorTextHint:I

.field public final colorTextMain:I

.field public final colorTextOther:I

.field public final colorTextOtherPress:I

.field public final colorTextSpecial:I

.field public final sizeTextBigButton:I

.field public final sizeTextMain:I

.field public final sizeTextTitle:I

.field public final themeId:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v16, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

    const-string v1, "theme_orange"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, -0x149f00

    const v6, -0xd7cd7

    const v7, -0x3db000

    const/high16 v8, -0x1000000

    const v9, -0x139100

    const v10, -0x4d4d4e

    const v11, -0xca670c

    const v12, -0xd77b26    # -2.240001E38f

    const/16 v13, 0x14

    const/16 v14, 0x13

    const/16 v15, 0x17

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v16, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->theme_orange:Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

    const/4 v1, 0x0

    aput-object v16, v0, v1

    sput-object v0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->a:[Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIIIII)V
    .registers 16

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->themeId:I

    iput p4, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorBackground:I

    iput p5, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorPrimary:I

    iput p6, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorPrimaryShallow:I

    iput p7, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorPrimaryDark:I

    iput p8, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorTextMain:I

    iput p9, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorTextSpecial:I

    iput p10, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorTextHint:I

    iput p11, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorTextOther:I

    iput p12, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->colorTextOtherPress:I

    iput p13, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->sizeTextTitle:I

    iput p14, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->sizeTextMain:I

    iput p15, p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->sizeTextBigButton:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;
    .registers 2

    const-class v0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

    return-object p0
.end method

.method public static values()[Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;
    .registers 4

    sget-object v0, Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;->a:[Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

    array-length v1, v0

    new-array v2, v1, [Lcom/ssjj/fnsdk/core/update/ViewTheme$Theme;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
