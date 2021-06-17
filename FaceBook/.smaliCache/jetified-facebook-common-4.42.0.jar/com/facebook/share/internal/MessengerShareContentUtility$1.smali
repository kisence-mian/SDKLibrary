.class synthetic Lcom/facebook/share/internal/MessengerShareContentUtility$1;
.super Ljava/lang/Object;
.source "MessengerShareContentUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/MessengerShareContentUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$share$model$ShareMessengerGenericTemplateContent$ImageAspectRatio:[I

.field static final synthetic $SwitchMap$com$facebook$share$model$ShareMessengerMediaTemplateContent$MediaType:[I

.field static final synthetic $SwitchMap$com$facebook$share$model$ShareMessengerURLActionButton$WebviewHeightRatio:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 347
    invoke-static {}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->values()[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerMediaTemplateContent$MediaType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->VIDEO:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    .line 335
    :goto_14
    invoke-static {}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->values()[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerGenericTemplateContent$ImageAspectRatio:[I

    :try_start_1d
    sget-object v2, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    move-exception v0

    .line 321
    :goto_27
    invoke-static {}, Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;->values()[Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerURLActionButton$WebviewHeightRatio:[I

    :try_start_30
    sget-object v2, Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;->WebviewHeightRatioCompact:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception v0

    :goto_3a
    :try_start_3a
    sget-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerURLActionButton$WebviewHeightRatio:[I

    sget-object v1, Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;->WebviewHeightRatioTall:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_45} :catch_46

    goto :goto_47

    :catch_46
    move-exception v0

    :goto_47
    return-void
.end method
