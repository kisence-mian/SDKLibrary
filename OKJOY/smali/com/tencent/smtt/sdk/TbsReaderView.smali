.class public Lcom/tencent/smtt/sdk/TbsReaderView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;
    }
.end annotation


# static fields
.field public static final IS_BAR_ANIMATING:Ljava/lang/String; = "is_bar_animating"

.field public static final IS_BAR_SHOWING:Ljava/lang/String; = "is_bar_show"

.field public static final IS_INTO_DOWNLOADING:Ljava/lang/String; = "into_downloading"

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final KEY_TEMP_PATH:Ljava/lang/String; = "tempPath"

.field public static final READER_CHANNEL_DOC_ID:I = 0x2ad5

.field public static final READER_CHANNEL_PDF_ID:I = 0x2a52

.field public static final READER_CHANNEL_PPT_ID:I = 0x2a51

.field public static final READER_CHANNEL_TXT_ID:I = 0x2a53

.field public static final READER_STATISTICS_COUNT_CANCEL_LOADED_BTN:Ljava/lang/String; = "AHNG802"

.field public static final READER_STATISTICS_COUNT_CLICK_LOADED_BTN:Ljava/lang/String; = "AHNG801"

.field public static final READER_STATISTICS_COUNT_DOC_INTO_BROWSER:Ljava/lang/String; = "AHNG829"

.field public static final READER_STATISTICS_COUNT_DOC_INTO_DIALOG:Ljava/lang/String; = "AHNG827"

.field public static final READER_STATISTICS_COUNT_DOC_INTO_DOWNLOAD:Ljava/lang/String; = "AHNG828"

.field public static final READER_STATISTICS_COUNT_DOC_SEARCH_BTN:Ljava/lang/String; = "AHNG826"

.field public static final READER_STATISTICS_COUNT_PDF_FOLDER_BTN:Ljava/lang/String; = "AHNG810"

.field public static final READER_STATISTICS_COUNT_PDF_INTO_BROWSER:Ljava/lang/String; = "AHNG813"

.field public static final READER_STATISTICS_COUNT_PDF_INTO_DIALOG:Ljava/lang/String; = "AHNG811"

.field public static final READER_STATISTICS_COUNT_PDF_INTO_DOWNLOAD:Ljava/lang/String; = "AHNG812"

.field public static final READER_STATISTICS_COUNT_PPT_INTO_BROWSER:Ljava/lang/String; = "AHNG809"

.field public static final READER_STATISTICS_COUNT_PPT_INTO_DIALOG:Ljava/lang/String; = "AHNG807"

.field public static final READER_STATISTICS_COUNT_PPT_INTO_DOWNLOAD:Ljava/lang/String; = "AHNG808"

.field public static final READER_STATISTICS_COUNT_PPT_PLAY_BTN:Ljava/lang/String; = "AHNG806"

.field public static final READER_STATISTICS_COUNT_RETRY_BTN:Ljava/lang/String; = "AHNG803"

.field public static final READER_STATISTICS_COUNT_TXT_INTO_BROWSER:Ljava/lang/String; = "AHNG817"

.field public static final READER_STATISTICS_COUNT_TXT_INTO_DIALOG:Ljava/lang/String; = "AHNG815"

.field public static final READER_STATISTICS_COUNT_TXT_INTO_DOWNLOAD:Ljava/lang/String; = "AHNG816"

.field public static final READER_STATISTICS_COUNT_TXT_NOVEL_BTN:Ljava/lang/String; = "AHNG814"

.field public static final TAG:Ljava/lang/String; = "TbsReaderView"

.field static f:Z

.field public static gReaderPackName:Ljava/lang/String;

.field public static gReaderPackVersion:Ljava/lang/String;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/tencent/smtt/sdk/ReaderWizard;

.field c:Ljava/lang/Object;

.field d:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

.field e:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackVersion:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->d:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->e:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error: unexpect context(none Activity)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iput-object p2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->d:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    new-instance v0, Lcom/tencent/smtt/sdk/ba;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/ba;-><init>(Lcom/tencent/smtt/sdk/TbsReaderView;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->e:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    if-nez v0, :cond_1b

    invoke-static {v3}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;ZZ)V

    invoke-static {v2}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/o;->b()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    :cond_1b
    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    return v0
.end method

.method public static getResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ReaderWizard;->getResDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public static getResString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ReaderWizard;->getResString(I)Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public static isSupportExt(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ReaderWizard;->isSupportCurrentPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ReaderWizard;->isSupportExt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method


# virtual methods
.method a()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-nez v1, :cond_e

    new-instance v1, Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->e:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/ReaderWizard;-><init>(Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    :cond_e
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ReaderWizard;->getTbsReader()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    :cond_1a
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/ReaderWizard;->initTbsReader(Ljava/lang/Object;Landroid/content/Context;)Z
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_27} :catch_29

    move-result v0

    :cond_28
    :goto_28
    return v0

    :catch_29
    move-exception v1

    const-string v1, "TbsReaderView"

    const-string v2, "Unexpect null object!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public doCommand(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/smtt/sdk/ReaderWizard;->doCommand(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public downloadPlugin(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-nez v0, :cond_d

    const-string v0, "TbsReaderView"

    const-string v1, "downloadPlugin failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/tencent/smtt/sdk/ReaderWizard;->checkPlugin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_c
.end method

.method public onSizeChanged(II)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/smtt/sdk/ReaderWizard;->onSizeChanged(Ljava/lang/Object;II)V

    :cond_f
    return-void
.end method

.method public onStop()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/ReaderWizard;->destroy(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    :cond_e
    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    return-void
.end method

.method public openFile(Landroid/os/Bundle;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_8

    if-nez p1, :cond_10

    :cond_8
    const-string v0, "TbsReaderView"

    const-string v1, "init failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/a/d;->c(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/a/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_53

    move v0, v1

    :goto_1f
    or-int/2addr v0, v3

    const-string v3, "browser6.0"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const-wide/32 v4, 0x5d1a79

    const-wide/32 v6, 0x94ed0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;JJ)Z

    move-result v0

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/a/d;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_55

    :goto_39
    or-int/2addr v0, v1

    const-string v1, "browser6.1"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/tencent/smtt/sdk/ReaderWizard;->openFile(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/FrameLayout;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "TbsReaderView"

    const-string v1, "OpenFile failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_53
    move v0, v2

    goto :goto_1f

    :cond_55
    move v1, v2

    goto :goto_39
.end method

.method public preOpen(Ljava/lang/String;Z)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/tencent/smtt/sdk/TbsReaderView;->isSupportExt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "TbsReaderView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not supported by:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return v0

    :cond_1e
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsReaderView;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a()Z

    move-result v1

    if-eqz p2, :cond_43

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    const/4 v0, 0x1

    :cond_38
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/tencent/smtt/sdk/ReaderWizard;->checkPlugin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1d

    :cond_43
    move v0, v1

    goto :goto_1d
.end method

.method public userStatistics(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/smtt/sdk/ReaderWizard;->userStatistics(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
