.class public final enum Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

.field public static final enum FLOAT:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

.field public static final enum NORMAL:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

.field public static final enum PINNED:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->NORMAL:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    const-string v1, "PINNED"

    invoke-direct {v0, v1, v3}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->PINNED:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v4}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->FLOAT:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    sget-object v1, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->NORMAL:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->PINNED:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->FLOAT:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->$VALUES:[Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;
    .registers 2

    const-class v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->$VALUES:[Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    invoke-virtual {v0}, [Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    return-object v0
.end method
