.class public final enum Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
.super Ljava/lang/Enum;
.source "LikeBoxCountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeBoxCountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LikeBoxCountViewCaretPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field public static final enum BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field public static final enum LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field public static final enum RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field public static final enum TOP:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 45
    new-instance v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 46
    new-instance v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 47
    new-instance v3, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 48
    new-instance v5, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 44
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->$VALUES:[Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    .registers 1

    .line 44
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->$VALUES:[Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    return-object v0
.end method
