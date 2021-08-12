.class public Lcom/ss/android/socialbase/downloader/c/a;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/c/a$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Lcom/ss/android/socialbase/downloader/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    return-void
.end method

.method public static a(I)V
    .registers 1

    .line 24
    sput p0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 68
    const-string v0, "DownloaderLogger"

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 46
    if-nez p1, :cond_3

    .line 47
    return-void

    .line 49
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_b

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_b
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_16

    .line 52
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_16
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 168
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 169
    return-void

    .line 171
    :cond_5
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_11

    .line 172
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :cond_11
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_1c

    .line 174
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :cond_1c
    return-void
.end method

.method public static a()Z
    .registers 2

    .line 38
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloader-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1a
    const-string p0, "DownloaderLogger"

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 79
    if-nez p1, :cond_3

    .line 80
    return-void

    .line 82
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_f

    .line 83
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_1a

    .line 85
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1a
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 105
    if-nez p1, :cond_3

    .line 106
    return-void

    .line 108
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_f

    .line 109
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_1a

    .line 111
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1a
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 131
    if-nez p1, :cond_3

    .line 132
    return-void

    .line 134
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_f

    .line 135
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_1a

    .line 137
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1a
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 157
    if-nez p1, :cond_3

    .line 158
    return-void

    .line 160
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/c/a;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_f

    .line 161
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/c/a;->b:Lcom/ss/android/socialbase/downloader/c/a$a;

    if-eqz v0, :cond_1a

    .line 163
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/c/a$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1a
    return-void
.end method
