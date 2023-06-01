.class public Lcom/ssjj/fnsdk/core/update/match/MatchFactory;
.super Ljava/lang/Object;


# static fields
.field public static MATCH_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/ssjj/fnsdk/core/update/match/MatchFactory;->MATCH_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMatch(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/CommentHnadler;->getCommentLength(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_15

    new-instance p0, Lcom/ssjj/fnsdk/core/update/match/YdSmartUpdateMatch;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/match/YdSmartUpdateMatch;-><init>()V

    goto :goto_1a

    :cond_15
    new-instance p0, Lcom/ssjj/fnsdk/core/update/match/FNSmartUpdateMatch;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/match/FNSmartUpdateMatch;-><init>()V

    :goto_1a
    invoke-interface {p0}, Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;->apkType()I

    move-result v0

    sput v0, Lcom/ssjj/fnsdk/core/update/match/MatchFactory;->MATCH_TYPE:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Apk type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/ssjj/fnsdk/core/update/match/MatchFactory;->MATCH_TYPE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method
