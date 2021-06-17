.class public Lorg/repackage/com/vivo/identifier/DataBaseOperation;
.super Ljava/lang/Object;
.source "DataBaseOperation.java"


# static fields
.field private static final a:Ljava/lang/String; = "VMS_IDLG_SDK_DB"

.field private static final b:Ljava/lang/String; = "content://com.vivo.vms.IdProvider/IdentifierId"

.field private static final c:Ljava/lang/String; = "value"

.field private static final d:Ljava/lang/String; = "OAID"

.field private static final e:Ljava/lang/String; = "AAID"

.field private static final f:Ljava/lang/String; = "VAID"

.field private static final g:Ljava/lang/String; = "OAIDSTATUS"

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x4


# instance fields
.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/repackage/com/vivo/identifier/DataBaseOperation;->l:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 31
    nop

    .line 32
    nop

    .line 33
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_76

    :pswitch_6
    move-object v2, v0

    goto :goto_49

    .line 44
    :pswitch_8
    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 45
    move-object v2, p1

    goto :goto_49

    .line 41
    :pswitch_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 42
    move-object v2, p1

    goto :goto_49

    .line 38
    :pswitch_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 39
    move-object v2, p1

    goto :goto_49

    .line 35
    :pswitch_42
    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 36
    move-object v2, p1

    .line 49
    :goto_49
    iget-object p1, p0, Lorg/repackage/com/vivo/identifier/DataBaseOperation;->l:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 50
    if-eqz p1, :cond_6e

    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 52
    const-string p2, "value"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    .line 54
    :cond_6a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_75

    .line 56
    :cond_6e
    const-string p1, "VMS_IDLG_SDK_DB"

    const-string p2, "return cursor is null,return"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_75
    return-object v0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_42
        :pswitch_29
        :pswitch_10
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
