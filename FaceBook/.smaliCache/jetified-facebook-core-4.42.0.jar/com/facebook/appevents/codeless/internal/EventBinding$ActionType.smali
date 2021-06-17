.class public final enum Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
.super Ljava/lang/Enum;
.source "EventBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/internal/EventBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

.field public static final enum CLICK:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

.field public static final enum SELECTED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

.field public static final enum TEXT_CHANGED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 164
    new-instance v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->CLICK:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    .line 165
    new-instance v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    const-string v3, "SELECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->SELECTED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    .line 166
    new-instance v3, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    const-string v5, "TEXT_CHANGED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->TEXT_CHANGED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    .line 163
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->$VALUES:[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 163
    const-class v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    .registers 1

    .line 163
    sget-object v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->$VALUES:[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-virtual {v0}, [Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    return-object v0
.end method
