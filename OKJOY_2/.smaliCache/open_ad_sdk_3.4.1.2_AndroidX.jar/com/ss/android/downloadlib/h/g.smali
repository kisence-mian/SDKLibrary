.class public Lcom/ss/android/downloadlib/h/g;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .registers 4

    .line 12
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 15
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ss/android/downloadlib/h/g;->a(Ljava/io/File;JI)J

    move-result-wide v0

    return-wide v0

    .line 13
    :cond_13
    :goto_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static a(Ljava/io/File;JI)J
    .registers 8

    .line 22
    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    .line 25
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 26
    add-int/lit8 p3, p3, 0x1

    .line 27
    const/16 v0, 0x32

    if-lt p3, v0, :cond_18

    .line 28
    return-wide p1

    .line 30
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 32
    if-eqz p0, :cond_35

    .line 33
    array-length v0, p0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_35

    aget-object v2, p0, v1

    .line 34
    invoke-static {v2, p1, p2, p3}, Lcom/ss/android/downloadlib/h/g;->a(Ljava/io/File;JI)J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 38
    :cond_35
    return-wide p1

    .line 23
    :cond_36
    :goto_36
    return-wide p1
.end method
