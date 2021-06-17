.class public final enum Lcom/facebook/share/widget/LikeView$ObjectType;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/LikeView$ObjectType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

.field public static final enum UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 71
    new-instance v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 76
    new-instance v1, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v3, "OPEN_GRAPH"

    const/4 v4, 0x1

    const-string v5, "open_graph"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->OPEN_GRAPH:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 81
    new-instance v3, Lcom/facebook/share/widget/LikeView$ObjectType;

    const-string v5, "PAGE"

    const/4 v6, 0x2

    const-string v7, "page"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/facebook/share/widget/LikeView$ObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 66
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/share/widget/LikeView$ObjectType;->$VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 83
    sput-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

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

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->stringValue:Ljava/lang/String;

    .line 99
    iput p4, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->intValue:I

    .line 100
    return-void
.end method

.method public static fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 6
    .param p0, "enumValue"    # I

    .line 86
    invoke-static {}, Lcom/facebook/share/widget/LikeView$ObjectType;->values()[Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 87
    .local v3, "objectType":Lcom/facebook/share/widget/LikeView$ObjectType;
    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 88
    return-object v3

    .line 86
    .end local v3    # "objectType":Lcom/facebook/share/widget/LikeView$ObjectType;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 92
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 66
    const-class v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 1

    .line 66
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->$VALUES:[Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$ObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->intValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$ObjectType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
