.class public abstract enum Lcom/sigmob/sdk/common/f/p;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/common/f/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/common/f/p;

.field public static final enum b:Lcom/sigmob/sdk/common/f/p;

.field public static final enum c:Lcom/sigmob/sdk/common/f/p;

.field public static final enum d:Lcom/sigmob/sdk/common/f/p;

.field public static final enum e:Lcom/sigmob/sdk/common/f/p;

.field public static final enum f:Lcom/sigmob/sdk/common/f/p;

.field private static final synthetic h:[Lcom/sigmob/sdk/common/f/p;


# instance fields
.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/sigmob/sdk/common/f/p$1;

    const-string v1, "IGNORE_ABOUT_SCHEME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sigmob/sdk/common/f/p$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sigmob/sdk/common/f/p;->a:Lcom/sigmob/sdk/common/f/p;

    new-instance v1, Lcom/sigmob/sdk/common/f/p$2;

    const-string v3, "OPEN_WITH_LANDPAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sigmob/sdk/common/f/p$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/sigmob/sdk/common/f/p;->b:Lcom/sigmob/sdk/common/f/p;

    new-instance v3, Lcom/sigmob/sdk/common/f/p$3;

    const-string v5, "OPEN_WITH_BROWSER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/sigmob/sdk/common/f/p$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/sigmob/sdk/common/f/p;->c:Lcom/sigmob/sdk/common/f/p;

    new-instance v5, Lcom/sigmob/sdk/common/f/p$4;

    const-string v7, "HANDLE_SIGMOBAD_SCHEME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/sigmob/sdk/common/f/p$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/sigmob/sdk/common/f/p;->d:Lcom/sigmob/sdk/common/f/p;

    new-instance v7, Lcom/sigmob/sdk/common/f/p$5;

    const-string v9, "FOLLOW_DEEP_LINK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/sigmob/sdk/common/f/p$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    new-instance v9, Lcom/sigmob/sdk/common/f/p$6;

    const-string v11, "NOOP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lcom/sigmob/sdk/common/f/p$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/sigmob/sdk/common/f/p;->f:Lcom/sigmob/sdk/common/f/p;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sigmob/sdk/common/f/p;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sigmob/sdk/common/f/p;->h:[Lcom/sigmob/sdk/common/f/p;

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

    iput-boolean p3, p0, Lcom/sigmob/sdk/common/f/p;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/sigmob/sdk/common/f/p$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/common/f/p;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/common/f/p;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/common/f/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/common/f/p;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/common/f/p;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/f/p;->h:[Lcom/sigmob/sdk/common/f/p;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/common/f/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/common/f/p;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/common/f/q;Ljava/lang/String;)V
.end method

.method public a(Lcom/sigmob/sdk/common/f/q;Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V
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

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/common/f/p;->g:Z

    if-eqz v0, :cond_25

    if-eqz p4, :cond_1d

    goto :goto_25

    :cond_1d
    new-instance p1, Lcom/sigmob/sdk/common/c/b;

    const-string p2, "Attempted to handle action without user interaction."

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/common/c/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    :goto_25
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/sigmob/sdk/common/f/p;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/common/f/q;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Landroid/net/Uri;)Z
.end method
