.class Lcom/sigmob/sdk/base/common/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final e:J = 0x5265c00L


# instance fields
.field final a:Ljava/util/Calendar;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/utils/a;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sigmob/sdk/base/common/utils/a;->d:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/a;->a:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/common/utils/a;
    .registers 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/a;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/a;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/utils/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v0
.end method

.method static b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method c()Z
    .registers 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/a;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-ne p0, p1, :cond_9

    move v1, v0

    goto :goto_4

    :cond_9
    instance-of v2, p1, Lcom/sigmob/sdk/base/common/utils/a;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/sigmob/sdk/base/common/utils/a;

    iget-boolean v2, p0, Lcom/sigmob/sdk/base/common/utils/a;->d:Z

    iget-boolean v3, p1, Lcom/sigmob/sdk/base/common/utils/a;->d:Z

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/common/utils/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/common/utils/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :goto_29
    move v1, v0

    goto :goto_4

    :cond_2b
    move v0, v1

    goto :goto_29
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/a;->d:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_16
    add-int/2addr v0, v1

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisingId{mLastRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/a;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertisingId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSigmobId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDoNotTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
