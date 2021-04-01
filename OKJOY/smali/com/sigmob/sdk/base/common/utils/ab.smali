.class public abstract enum Lcom/sigmob/sdk/base/common/utils/ab;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/common/utils/ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/utils/ab;

.field public static final enum b:Lcom/sigmob/sdk/base/common/utils/ab;

.field public static final enum c:Lcom/sigmob/sdk/base/common/utils/ab;

.field public static final enum d:Lcom/sigmob/sdk/base/common/utils/ab;

.field public static final enum e:Lcom/sigmob/sdk/base/common/utils/ab;

.field public static final enum f:Lcom/sigmob/sdk/base/common/utils/ab;

.field private static final synthetic h:[Lcom/sigmob/sdk/base/common/utils/ab;


# instance fields
.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ab$1;

    const-string v1, "IGNORE_ABOUT_SCHEME"

    invoke-direct {v0, v1, v4, v4}, Lcom/sigmob/sdk/base/common/utils/ab$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->a:Lcom/sigmob/sdk/base/common/utils/ab;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ab$2;

    const-string v1, "OPEN_WITH_LANDPAGE"

    invoke-direct {v0, v1, v3, v3}, Lcom/sigmob/sdk/base/common/utils/ab$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->b:Lcom/sigmob/sdk/base/common/utils/ab;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ab$3;

    const-string v1, "OPEN_WITH_BROWSER"

    invoke-direct {v0, v1, v5, v3}, Lcom/sigmob/sdk/base/common/utils/ab$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->c:Lcom/sigmob/sdk/base/common/utils/ab;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ab$4;

    const-string v1, "HANDLE_SIGMOBAD_SCHEME"

    invoke-direct {v0, v1, v6, v3}, Lcom/sigmob/sdk/base/common/utils/ab$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->d:Lcom/sigmob/sdk/base/common/utils/ab;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ab$5;

    const-string v1, "FOLLOW_DEEP_LINK"

    invoke-direct {v0, v1, v7, v3}, Lcom/sigmob/sdk/base/common/utils/ab$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ab$6;

    const-string v1, "NOOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/sigmob/sdk/base/common/utils/ab$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->f:Lcom/sigmob/sdk/base/common/utils/ab;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sigmob/sdk/base/common/utils/ab;

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->a:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->b:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->c:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->d:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sigmob/sdk/base/common/utils/ab;->f:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->h:[Lcom/sigmob/sdk/base/common/utils/ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/sigmob/sdk/base/common/utils/ab;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/sigmob/sdk/base/common/utils/ab$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/utils/ab;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/utils/ab;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/utils/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/utils/ab;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/utils/ab;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ab;->h:[Lcom/sigmob/sdk/base/common/utils/ab;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/utils/ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/utils/ab;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/utils/ac;Ljava/lang/String;)V
.end method

.method public a(Lcom/sigmob/sdk/base/common/utils/ac;Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad event URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/ab;->g:Z

    if-eqz v0, :cond_24

    if-nez p4, :cond_24

    new-instance v0, Lcom/sigmob/sdk/base/b/a;

    const-string v1, "Attempted to handle action without user interaction."

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/sigmob/sdk/base/common/utils/ab;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/utils/ac;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Landroid/net/Uri;)Z
.end method
