.class public Lcom/facebook/FacebookContentProvider;
.super Landroid/content/ContentProvider;
.source "FacebookContentProvider.java"


# static fields
.field private static final ATTACHMENT_URL_BASE:Ljava/lang/String; = "content://com.facebook.app.FacebookContentProvider"

.field private static final INVALID_FILE_NAME:Ljava/lang/String; = ".."

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/facebook/FacebookContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookContentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 62
    return-void
.end method

.method public static getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "attachmentName"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "content://com.facebook.app.FacebookContentProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 77
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 73
    const-string v1, "%s%s/%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookContentProvider;->parseCallIdAndAttachmentName(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 116
    .local v0, "callIdAndAttachmentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/UUID;Ljava/lang/String;>;"
    if-eqz v0, :cond_3b

    .line 121
    :try_start_6
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 125
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1b

    .line 129
    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2

    .line 126
    :cond_1b
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v0    # "callIdAndAttachmentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/UUID;Ljava/lang/String;>;"
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    throw v2
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_21} :catch_21

    .line 130
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "callIdAndAttachmentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/UUID;Ljava/lang/String;>;"
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    :catch_21
    move-exception v1

    .line 131
    .local v1, "exception":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/facebook/FacebookContentProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unexpected exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    throw v1

    .line 117
    .end local v1    # "exception":Ljava/io/FileNotFoundException;
    :cond_3b
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
.end method

.method parseCallIdAndAttachmentName(Landroid/net/Uri;)Landroid/util/Pair;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    const-string v0, ".."

    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "callIdAndAttachmentName":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 145
    .local v4, "callIdString":Ljava/lang/String;
    aget-object v2, v3, v2

    .line 148
    .local v2, "attachmentName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 153
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 155
    .local v0, "callId":Ljava/util/UUID;
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 150
    .end local v0    # "callId":Ljava/util/UUID;
    :cond_2c
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_32

    .line 156
    .end local v1    # "callIdAndAttachmentName":Ljava/lang/String;
    .end local v2    # "attachmentName":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "callIdString":Ljava/lang/String;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_32
    move-exception v0

    .line 157
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings2"    # [Ljava/lang/String;
    .param p5, "s2"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    return v0
.end method
