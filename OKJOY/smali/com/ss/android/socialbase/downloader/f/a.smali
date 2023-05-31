.class public Lcom/ss/android/socialbase/downloader/f/a;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/f/a$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Lcom/ss/android/socialbase/downloader/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    return-void
.end method

.method public static a(I)V
    .registers 1

    .prologue
    .line 24
    sput p0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    const-string v0, "DownloaderLogger"

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 46
    if-nez p1, :cond_3

    .line 51
    :cond_2
    :goto_2
    return-void

    .line 49
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 81
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 86
    :cond_4
    :goto_4
    return-void

    .line 84
    :cond_5
    sget v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    .line 85
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 38
    sget v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloader-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_19
    return-object v0

    :cond_1a
    const-string v0, "DownloaderLogger"

    goto :goto_19
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 73
    if-nez p1, :cond_3

    .line 78
    :cond_2
    :goto_2
    return-void

    .line 76
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 77
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 156
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 164
    :cond_4
    :goto_4
    return-void

    .line 159
    :cond_5
    sget v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_11

    .line 160
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_11
    sget-object v0, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/a$a;

    if-eqz v0, :cond_4

    .line 162
    sget-object v0, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/a$a;

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/android/socialbase/downloader/f/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 93
    if-nez p1, :cond_3

    .line 101
    :cond_2
    :goto_2
    return-void

    .line 96
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_f

    .line 97
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/a$a;

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/a$a;

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/f/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 119
    if-nez p1, :cond_3

    .line 127
    :cond_2
    :goto_2
    return-void

    .line 122
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_f

    .line 123
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/a$a;

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/a$a;

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/f/a$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 145
    if-nez p1, :cond_3

    .line 153
    :cond_2
    :goto_2
    return-void

    .line 148
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/f/a;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_f

    .line 149
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/a$a;

    if-eqz v0, :cond_2

    .line 151
    sget-object v0, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/a$a;

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/f/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
