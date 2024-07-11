.class public final enum Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuxiliaryViewPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field public static final enum BOTTOM:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field static DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field public static final enum INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field public static final enum TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 235
    new-instance v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const-string v1, "BOTTOM"

    const/4 v2, 0x0

    const-string v3, "bottom"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 243
    new-instance v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const-string v3, "INLINE"

    const/4 v4, 0x1

    const-string v5, "inline"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 249
    new-instance v3, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    const-string v5, "TOP"

    const/4 v6, 0x2

    const-string v7, "top"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 227
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->$VALUES:[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 251
    sput-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->stringValue:Ljava/lang/String;

    .line 267
    iput p4, p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->intValue:I

    .line 268
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)I
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 228
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->getValue()I

    move-result v0

    return v0
.end method

.method static fromInt(I)Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    .registers 6
    .param p0, "enumValue"    # I

    .line 254
    invoke-static {}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->values()[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 255
    .local v3, "auxViewPosition":Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    invoke-direct {v3}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 256
    return-object v3

    .line 254
    .end local v3    # "auxViewPosition":Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 260
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private getValue()I
    .registers 2

    .line 276
    iget v0, p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 227
    const-class v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    .registers 1

    .line 227
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->$VALUES:[Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->stringValue:Ljava/lang/String;

    return-object v0
.end method
