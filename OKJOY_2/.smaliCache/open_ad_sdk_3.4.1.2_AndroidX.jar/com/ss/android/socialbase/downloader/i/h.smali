.class public Lcom/ss/android/socialbase/downloader/i/h;
.super Ljava/lang/Object;
.source "SqlUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v0, p2}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string p0, ") VALUES ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    array-length p0, p2

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 64
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    if-eqz p1, :cond_2e

    array-length v1, p1

    if-lez v1, :cond_2e

    .line 74
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/i/h;->b(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    if-eqz p2, :cond_37

    array-length p1, p2

    if-lez p1, :cond_37

    .line 86
    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {v0, p0, p2}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 4

    .line 28
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_15

    .line 29
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_d

    .line 30
    const-string v1, "?,"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 32
    :cond_d
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_15
    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4

    .line 7
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 6

    .line 49
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 50
    aget-object v1, p2, v0

    invoke-static {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    .line 52
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1c
    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1f

    .line 19
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1c

    .line 21
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_1f
    return-object p0
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "INSERT OR REPLACE INTO "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p0, ") VALUES ("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    array-length p0, p1

    invoke-static {p2, p0}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 99
    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5

    .line 39
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    .line 40
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/i/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    .line 42
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_1c
    return-object p0
.end method
