.class public Lcom/ssjj/fnsdk/core/FNImagePicker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;,
        Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;
    }
.end annotation


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/FNImagePicker;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

.field private f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

.field private g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

.field private h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/FNImagePicker;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/FNImagePicker;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/FNImagePicker;->a:Lcom/ssjj/fnsdk/core/FNImagePicker;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    const-string v1, ""

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p2

    invoke-static {p2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".fileprovider"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/ssjj/fnsdk/core/FNFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_2c

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_29
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2c
    if-eqz v1, :cond_39

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3d

    :cond_39
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_3d
    return-object v1
.end method

.method private a()Z
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/FNImagePicker;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/FNImagePicker;->a:Lcom/ssjj/fnsdk/core/FNImagePicker;

    return-object v0
.end method

.method public static hasSDCard()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_a2

    const-string p2, ""

    packed-switch p1, :pswitch_data_d2

    goto/16 :goto_c8

    :pswitch_c
    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    invoke-direct {p0, p2, p1}, Lcom/ssjj/fnsdk/core/FNImagePicker;->a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "pick file from local: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_c9

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onPick(Ljava/lang/String;)V

    :goto_33
    iput-object v1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    goto/16 :goto_c9

    :pswitch_37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "pick image from crop: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_c9

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->d:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onPick(Ljava/lang/String;)V

    :goto_54
    iput-object v1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    goto/16 :goto_c9

    :pswitch_58
    if-eqz p3, :cond_66

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_66

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    invoke-direct {p0, p2, p1}, Lcom/ssjj/fnsdk/core/FNImagePicker;->a(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "pick image from local: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_c9

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onPick(Ljava/lang/String;)V

    :goto_7f
    iput-object v1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    goto :goto_c9

    :pswitch_82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "pick image from camera: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_c9

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->c:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onPick(Ljava/lang/String;)V

    :goto_9f
    iput-object v1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    goto :goto_c9

    :cond_a2
    if-nez p2, :cond_c8

    packed-switch p1, :pswitch_data_de

    goto :goto_c8

    :pswitch_a8
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_c9

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    goto :goto_33

    :pswitch_b0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_c9

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    goto :goto_54

    :pswitch_b8
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_c9

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    goto :goto_7f

    :pswitch_c0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_c9

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    goto :goto_9f

    :cond_c8
    :goto_c8
    const/4 v2, 0x0

    :cond_c9
    :goto_c9
    if-eqz v2, :cond_d0

    const-string p1, "onActivityResult -> pick image true"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_d0
    return v2

    nop

    :pswitch_data_d2
    .packed-switch 0x7001
        :pswitch_82
        :pswitch_58
        :pswitch_37
        :pswitch_c
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x7001
        :pswitch_c0
        :pswitch_b8
        :pswitch_b0
        :pswitch_a8
    .end packed-switch
.end method

.method public pickFileFromLocal(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;)V
    .registers 5

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    goto :goto_1a

    :cond_18
    const-string p2, "*/*"

    :goto_1a
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x7004

    :try_start_1f
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_33

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    :cond_30
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->h:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    :goto_33
    return-void
.end method

.method public pickImageFromCamera(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;)V
    .registers 7

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p2, :cond_9a

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_9a

    :cond_11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNImagePicker;->hasSDCard()Z

    move-result v2

    if-nez v2, :cond_34

    const-string p2, "\u6ca1\u6709SD\u5361"

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker;->toast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_31

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    :cond_31
    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    return-void

    :cond_34
    if-eqz v1, :cond_4b

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNImagePicker;->a()Z

    move-result v1

    if-nez v1, :cond_4b

    const-string p2, "\u6ca1\u6709SD\u5b58\u50a8\u6743\u9650"

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker;->toast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_48

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    :cond_48
    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    return-void

    :cond_4b
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNImagePicker;->b()Z

    move-result v1

    if-nez v1, :cond_60

    const-string p2, "\u6ca1\u6709\u76f8\u673a\u6743\u9650"

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker;->toast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    :cond_5d
    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    return-void

    :cond_60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_72

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_72
    iput-object p3, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->c:Ljava/lang/String;

    :try_start_76
    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "output"

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p2, 0x7001

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8b} :catch_8c

    goto :goto_99

    :catch_8c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_97

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    :cond_97
    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    :goto_99
    return-void

    :cond_9a
    :goto_9a
    const-string p2, "\u62cd\u7167\u53d6\u6d88\uff1a\u4fdd\u5b58\u8def\u5f84\u4e3a\u7a7a"

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker;->toast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_a6

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    :cond_a6
    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->e:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    return-void
.end method

.method public pickImageFromCrop(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;)V
    .registers 8

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "input Uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->crop:Z

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "crop"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p5, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->aspectX:I

    if-lez p5, :cond_52

    const-string p5, "aspectX"

    iget v1, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->aspectX:I

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_52
    iget p5, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->aspectY:I

    if-lez p5, :cond_5d

    const-string p5, "aspectY"

    iget v1, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->aspectY:I

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5d
    iget p5, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->outputX:I

    if-lez p5, :cond_68

    const-string p5, "outputX"

    iget v1, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->outputX:I

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_68
    iget p5, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->outputY:I

    if-lez p5, :cond_73

    const-string p5, "outputY"

    iget p4, p4, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->outputY:I

    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_73
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "output"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p3, 0x7003

    :try_start_83
    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_97

    :catchall_87
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_94

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onPick(Ljava/lang/String;)V

    :cond_94
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->g:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    :goto_97
    return-void
.end method

.method public pickImageFromLocal(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;)V
    .registers 5

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->b:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v0, 0x7002

    :try_start_f
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_23

    :catch_13
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;->onCancel()V

    :cond_20
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNImagePicker;->f:Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;

    :goto_23
    return-void
.end method
