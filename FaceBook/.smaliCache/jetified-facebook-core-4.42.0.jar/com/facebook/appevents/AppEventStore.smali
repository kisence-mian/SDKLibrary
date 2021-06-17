.class Lcom/facebook/appevents/AppEventStore;
.super Ljava/lang/Object;
.source "AppEventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    }
.end annotation


# static fields
.field private static final PERSISTED_EVENTS_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedevents"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/facebook/appevents/AppEventStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .registers 6
    .param p0, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;

    const-class v0, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v0

    .line 46
    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 47
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v1

    .line 49
    .local v1, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {v1, p0}, Lcom/facebook/appevents/PersistedEvents;->containsKey(Lcom/facebook/appevents/AccessTokenAppIdPair;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 50
    nop

    .line 51
    invoke-virtual {v1, p0}, Lcom/facebook/appevents/PersistedEvents;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_24

    .line 54
    :cond_1d
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V

    .line 57
    :goto_24
    invoke-static {v1}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 58
    monitor-exit v0

    return-void

    .line 45
    .end local v1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local p0    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local p1    # "appEvents":Lcom/facebook/appevents/SessionEventsState;
    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AppEventCollection;)V
    .registers 7
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/AppEventCollection;

    const-class v0, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v0

    .line 62
    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 63
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v1

    .line 64
    .local v1, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 65
    .local v3, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v4

    .line 67
    .local v4, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    nop

    .line 69
    invoke-virtual {v4}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v5

    .line 67
    invoke-virtual {v1, v3, v5}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V

    .line 70
    .end local v3    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v4    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    goto :goto_12

    .line 72
    :cond_2b
    invoke-static {v1}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    .line 73
    monitor-exit v0

    return-void

    .line 61
    .end local v1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local p0    # "eventsToPersist":Lcom/facebook/appevents/AppEventCollection;
    :catchall_30
    move-exception p0

    monitor-exit v0

    goto :goto_34

    :goto_33
    throw p0

    :goto_34
    goto :goto_33
.end method

.method public static declared-synchronized readAndClearStore()Lcom/facebook/appevents/PersistedEvents;
    .registers 8

    const-class v0, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v0

    .line 77
    :try_start_3
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    const/4 v2, 0x0

    .line 81
    .local v2, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_8c

    .line 83
    .local v3, "context":Landroid/content/Context;
    :try_start_c
    const-string v4, "AppEventsLogger.persistedevents"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 84
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v5

    .line 86
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/PersistedEvents;
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_23} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_3d
    .catchall {:try_start_c .. :try_end_23} :catchall_3b

    move-object v2, v5

    .line 92
    .end local v4    # "is":Ljava/io/InputStream;
    :try_start_24
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_8c

    .line 101
    :try_start_27
    const-string v4, "AppEventsLogger.persistedevents"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_31
    .catchall {:try_start_27 .. :try_end_30} :catchall_8c

    .line 104
    :goto_30
    goto :goto_82

    .line 102
    :catch_31
    move-exception v4

    .line 103
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_32
    sget-object v5, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v6, "Got unexpected exception when removing events file: "

    :goto_36
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_8c

    .line 105
    nop

    .end local v4    # "ex":Ljava/lang/Exception;
    goto :goto_82

    .line 92
    :catchall_3b
    move-exception v4

    goto :goto_58

    .line 89
    :catch_3d
    move-exception v4

    .line 90
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3e
    sget-object v5, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v6, "Got unexpected exception while reading events: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    .line 92
    .end local v4    # "e":Ljava/lang/Exception;
    :try_start_45
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_8c

    .line 101
    :try_start_48
    const-string v4, "AppEventsLogger.persistedevents"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_8c

    goto :goto_30

    .line 102
    :catch_52
    move-exception v4

    .line 103
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_53
    sget-object v5, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v6, "Got unexpected exception when removing events file: "

    goto :goto_36

    .line 92
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_58
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_8c

    .line 101
    :try_start_5b
    const-string v5, "AppEventsLogger.persistedevents"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_64} :catch_65
    .catchall {:try_start_5b .. :try_end_64} :catchall_8c

    .line 104
    goto :goto_6d

    .line 102
    :catch_65
    move-exception v5

    .line 103
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_66
    sget-object v6, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v7, "Got unexpected exception when removing events file: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_6d
    throw v4

    .line 87
    :catch_6e
    move-exception v4

    .line 92
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_8c

    .line 101
    :try_start_72
    const-string v4, "AppEventsLogger.persistedevents"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7b} :catch_7c
    .catchall {:try_start_72 .. :try_end_7b} :catchall_8c

    goto :goto_30

    .line 102
    :catch_7c
    move-exception v4

    .line 103
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_7d
    sget-object v5, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v6, "Got unexpected exception when removing events file: "

    goto :goto_36

    .line 107
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_82
    if-nez v2, :cond_8a

    .line 108
    new-instance v4, Lcom/facebook/appevents/PersistedEvents;

    invoke-direct {v4}, Lcom/facebook/appevents/PersistedEvents;-><init>()V
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_8c

    move-object v2, v4

    .line 111
    :cond_8a
    monitor-exit v0

    return-object v2

    .line 76
    .end local v1    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .end local v2    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local v3    # "context":Landroid/content/Context;
    :catchall_8c
    move-exception v1

    monitor-exit v0

    goto :goto_90

    :goto_8f
    throw v1

    :goto_90
    goto :goto_8f
.end method

.method private static saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    .registers 7
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/PersistedEvents;

    .line 117
    const-string v0, "AppEventsLogger.persistedevents"

    const/4 v1, 0x0

    .line 118
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    .local v2, "context":Landroid/content/Context;
    :try_start_7
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    const/4 v5, 0x0

    .line 122
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 123
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_20
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1e

    .line 132
    :goto_1a
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    goto :goto_32

    .line 132
    :catchall_1e
    move-exception v0

    goto :goto_33

    .line 124
    :catch_20
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/Exception;
    :try_start_21
    sget-object v4, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v5, "Got unexpected exception while persisting events: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 127
    :try_start_28
    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_30
    .catchall {:try_start_28 .. :try_end_2f} :catchall_1e

    .line 130
    goto :goto_1a

    .line 128
    :catch_30
    move-exception v0

    goto :goto_1a

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_32
    return-void

    .line 132
    :goto_33
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    goto :goto_38

    :goto_37
    throw v0

    :goto_38
    goto :goto_37
.end method
