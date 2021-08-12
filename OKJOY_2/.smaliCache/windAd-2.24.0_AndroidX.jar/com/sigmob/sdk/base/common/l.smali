.class public Lcom/sigmob/sdk/base/common/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/l$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sigmob/sdk/base/common/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/l;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/l;->b:Ljava/util/Set;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_98

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_98

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2b
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p2, 0x3

    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const/4 p2, 0x1

    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v2, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6f

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_6f

    return-wide v0

    :cond_68
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_6f

    return-wide v0

    :cond_6f
    const-string p2, "User-Agent"

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "download"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p0
    :try_end_8f
    .catchall {:try_start_4 .. :try_end_8f} :catchall_90

    return-wide p0

    :catchall_90
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_98
    :goto_98
    return-wide v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/DownloadManager;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/DownloadManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3e

    :try_start_e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_3c

    if-eqz p0, :cond_1c

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1c
    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "title"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_3c

    return-object v1

    :catchall_3c
    move-exception v1

    goto :goto_40

    :catchall_3e
    move-exception v1

    move-object p0, v0

    :goto_40
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4d

    if-eqz p0, :cond_4c

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4c
    return-object v0

    :catchall_4d
    move-exception v0

    if-eqz p0, :cond_53

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v0
.end method

.method public static a(Landroid/app/DownloadManager;J)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/DownloadManager;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "reason"

    const-string v1, "status"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_67

    :try_start_1b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_2a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_65

    if-eqz p0, :cond_29

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_29
    return-object v2

    :cond_2a
    :try_start_2a
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "local_uri"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "fileName"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "uri"

    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catchall {:try_start_2a .. :try_end_64} :catchall_65

    return-object v5

    :catchall_65
    move-exception p1

    goto :goto_69

    :catchall_67
    move-exception p1

    move-object p0, v2

    :goto_69
    :try_start_69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_76

    if-eqz p0, :cond_75

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_75
    return-object v2

    :catchall_76
    move-exception p1

    if-eqz p0, :cond_7c

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download apk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_41
    invoke-static {v0, p0, p1, p2}, Lcom/sigmob/sdk/base/common/l;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    goto :goto_6f

    :catchall_45
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const-string v0, "download_start"

    const-string v1, "0"

    invoke-static {v0, v1, p2}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :try_start_5c
    const-string p1, "\u4e0b\u8f7d\u5931\u8d25"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_67

    goto :goto_6f

    :catchall_67
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_6f
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 15

    const-string v0, "0"

    const-string v1, "download_start"

    const/4 v2, 0x1

    :try_start_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/common/f/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ".apk"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_26
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-static {v5, v6, v4}, Lcom/sigmob/sdk/base/common/l;->c(JLjava/lang/String;)Z

    move-result v4
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_1f9

    const-string v7, "\u5f53\u524d\u6b63\u5728\u52aa\u529b\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u7b49"

    if-eqz v4, :cond_58

    :try_start_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_56

    goto :goto_57

    :catchall_56
    move-exception p0

    :goto_57
    return-void

    :cond_58
    :try_start_58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v8, "download"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/app/DownloadManager;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6e

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_84
    .catchall {:try_start_58 .. :try_end_84} :catchall_1f9

    if-eqz v8, :cond_6e

    :try_start_86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_9e
    .catchall {:try_start_86 .. :try_end_9e} :catchall_9f

    goto :goto_a0

    :catchall_9f
    move-exception p0

    :goto_a0
    return-void

    :cond_a1
    :try_start_a1
    sget-object v4, Lcom/sigmob/sdk/base/common/l;->a:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_db

    if-nez v4, :cond_db

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_db

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cacheFile deleteFile:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    :cond_db
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exists:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " containsKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_170

    if-eqz v4, :cond_113

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/sigmob/sdk/base/common/l;->b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_113
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/SDKConfig;->getApk_expired_time()I

    move-result v4

    if-nez v4, :cond_140

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default deleteFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_13c
    invoke-static {v4}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_170

    :cond_140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    cmp-long v4, v9, v7

    if-lez v4, :cond_168

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeOut deleteFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13c

    :cond_168
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/sigmob/sdk/base/common/l;->b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    :try_end_16f
    .catchall {:try_start_a1 .. :try_end_16f} :catchall_1f9

    return-void

    :cond_170
    :goto_170
    :try_start_170
    const-string v4, "\u4e0b\u8f7d\u5f00\u59cb"

    invoke-static {p1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_179
    .catchall {:try_start_170 .. :try_end_179} :catchall_17a

    goto :goto_182

    :catchall_17a
    move-exception v4

    :try_start_17b
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_182
    sget-object v4, Lcom/sigmob/sdk/base/common/l;->a:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p0, v7, v5

    if-eqz p0, :cond_1cc

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, v8, p0}, Lcom/sigmob/sdk/base/common/l;->a(JLjava/lang/String;)Z

    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sigmob/sdk/common/f/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "1"

    new-instance v4, Lcom/sigmob/sdk/base/common/l$1;

    invoke-direct {v4, v3, p2}, Lcom/sigmob/sdk/base/common/l$1;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p0, p3, v4}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    goto :goto_1f3

    :cond_1cc
    new-instance p0, Lcom/sigmob/sdk/base/common/l$2;

    invoke-direct {p0, v3, p2}, Lcom/sigmob/sdk/base/common/l$2;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v0, p3, p0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p0}, Lcom/sigmob/sdk/common/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_1da
    .catchall {:try_start_17b .. :try_end_1da} :catchall_1f9

    const-string p2, "download_failed"

    if-nez p0, :cond_1ed

    :try_start_1de
    const-string p0, "\u8bf7\u5148\u7ed9\u4e88\u5e94\u7528 WRITE_EXTERNAL_STORAGE \u6743\u9650"

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, " No permission Manifest.permission.WRITE_EXTERNAL_STORAGE "

    invoke-static {p2, v2, p0, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_1f3

    :cond_1ed
    const/4 p0, 0x2

    const-string v3, "download Directory not exist"

    invoke-static {p2, p0, v3, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_1f3
    sget-object p0, Lcom/sigmob/sdk/base/common/a;->y:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, p0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V
    :try_end_1f8
    .catchall {:try_start_1de .. :try_end_1f8} :catchall_1f9

    goto :goto_217

    :catchall_1f9
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-static {v1, v0, p3}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 p2, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p0, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :try_start_20c
    const-string p0, "\u8bf7\u5148\u7ed9\u4e88\u5e94\u7528\u6743\u9650"

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_215
    .catchall {:try_start_20c .. :try_end_215} :catchall_216

    goto :goto_217

    :catchall_216
    move-exception p0

    :goto_217
    return-void
.end method

.method public static a(JLjava/lang/String;)Z
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget-object v0, Lcom/sigmob/sdk/base/common/l;->b:Ljava/util/Set;

    new-instance v1, Lcom/sigmob/sdk/base/common/l$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, p0, p1}, Lcom/sigmob/sdk/base/common/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_e

    if-eqz p0, :cond_f

    move v0, v1

    goto :goto_f

    :catch_e
    move-exception p0

    :cond_f
    :goto_f
    return v0
.end method

.method public static b(JLjava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/sigmob/sdk/base/common/l;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/l$a;

    iget-wide v2, v1, Lcom/sigmob/sdk/base/common/l$a;->c:J

    cmp-long v2, v2, p0

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/sigmob/sdk/base/common/l$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_20
    sget-object p0, Lcom/sigmob/sdk/base/common/l;->b:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 9

    const-string p2, "androidx.core.content.FileProvider"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installAPK:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    :try_start_3f
    const-string v2, "\u5f00\u59cb\u5b89\u88c5"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_49

    goto :goto_51

    :catchall_49
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_bc

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v2, v3, :cond_60

    goto :goto_bc

    :cond_60
    const/4 v2, 0x0

    :try_start_61
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_66

    goto :goto_68

    :catchall_66
    move-exception v3

    move-object v3, v2

    :goto_68
    :try_start_68
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6d

    goto :goto_6e

    :catchall_6d
    move-exception p2

    :goto_6e
    if-eqz v3, :cond_c7

    :try_start_70
    new-instance p2, Lcom/sigmob/sdk/common/f/n$a;

    const-string v4, "getUriForFile"

    invoke-direct {p2, v3, v4}, Lcom/sigmob/sdk/common/f/n$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v3, Landroid/content/Context;

    invoke-virtual {p2, v3, p0}, Lcom/sigmob/sdk/common/f/n$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/common/f/n$a;

    const-class v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sigprovider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/sigmob/sdk/common/f/n$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/common/f/n$a;

    const-class v3, Ljava/io/File;

    invoke-virtual {p2, v3, v0}, Lcom/sigmob/sdk/common/f/n$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/common/f/n$a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/f/n$a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_a7} :catch_a9

    move-object v2, p2

    goto :goto_b1

    :catch_a9
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_b1
    if-eqz v2, :cond_c7

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "application/vnd.android.package-archive"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c7

    :cond_bc
    :goto_bc
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/l;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c7
    :goto_c7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    const/4 v0, 0x0

    :try_start_11
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_59

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    return v1

    :cond_2d
    :try_start_2d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_32
    const-string p0, "uri"

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_59

    if-eqz p0, :cond_4f

    const/4 p0, 0x1

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4e
    return p0

    :cond_4f
    :try_start_4f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_32

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_59

    return v1

    :catchall_59
    move-exception p0

    :try_start_5a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_67

    if-eqz v0, :cond_66

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_66
    return v1

    :catchall_67
    move-exception p0

    if-eqz v0, :cond_6d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6d
    throw p0
.end method

.method public static c(JLjava/lang/String;)Z
    .registers 7

    sget-object v0, Lcom/sigmob/sdk/base/common/l;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/common/l$a;

    iget-wide v2, v1, Lcom/sigmob/sdk/base/common/l$a;->c:J

    cmp-long v2, v2, p0

    if-eqz v2, :cond_20

    iget-object v1, v1, Lcom/sigmob/sdk/base/common/l$a;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method
