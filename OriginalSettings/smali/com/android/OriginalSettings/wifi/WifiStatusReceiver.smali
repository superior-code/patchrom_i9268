.class public Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field private static final DEBUG:Z

.field private static mDialogFlag:Z

.field private static mEnableShowApEventFlag:Z

.field private static mIsConnectivityNotiShowing:Z

.field public static mIsForegroundWifiSettings:Z

.field public static mIsForegroundWifiSubSettings:Z

.field private static mLastInfo:Landroid/net/NetworkInfo;

.field private static mShowOnceFlag:Z

.field private static mWifiDisabledWarning:Landroid/app/Notification;


# instance fields
.field private final ICON_WIFI_CONNECTED:I

.field private mPrioritymode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    .line 63
    sput-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 64
    sput-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 65
    sput-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 66
    sput-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    const v0, 0x7f0201d0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->ICON_WIFI_CONNECTED:I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mPrioritymode:Z

    return-void
.end method

.method private enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V
    .locals 5
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 430
    sget-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    if-ne v2, p2, :cond_0

    .line 442
    :goto_0
    return-void

    .line 433
    :cond_0
    sput-boolean p2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    .line 434
    sget-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableShowApEvent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 436
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 441
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0
.end method

.method public static isFactoryMode()Z
    .locals 6

    .prologue
    .line 372
    const-string v1, "/efs/FactoryApp/factorymode"

    .line 374
    .local v1, factoryModeFile:Ljava/lang/String;
    const/4 v2, 0x0

    .line 376
    .local v2, mode:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/FactoryApp/factorymode"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 382
    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    const/4 v3, 0x0

    .line 385
    :goto_1
    return v3

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/io/IOException;
    const-string v2, "OFF"

    .line 379
    const-string v3, "WifiStatusReceiver"

    const-string v4, "cannot open file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 361
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSettings on top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WifiSubSettings on top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-eqz v0, :cond_1

    .line 364
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    .line 365
    :cond_1
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    if-eqz v0, :cond_2

    .line 366
    const/4 v0, 0x2

    goto :goto_0

    .line 368
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "launchWith"

    .prologue
    .line 311
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiStatusReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWifiPickerActivity with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, wifiIntent:Landroid/content/Intent;
    if-lez p3, :cond_1

    .line 316
    sput p3, Lcom/android/OriginalSettings/wifi/WifiSettings;->mStartWith:I

    .line 317
    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    .end local v0           #wifiIntent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 303
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    const-string v1, "Call AP LIST dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    const-class v1, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method private updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 2
    .parameter "context"
    .parameter "wifiManager"

    .prologue
    .line 412
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    const-string v1, "updateResources "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    if-eqz v0, :cond_1

    .line 415
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    .line 427
    :cond_1
    return-void
.end method

.method private watchdogNotification(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v11, 0x1

    const v10, 0x7f09033d

    const/4 v9, 0x0

    .line 323
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 326
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz p2, :cond_2

    .line 327
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v6

    if-eq v6, v11, :cond_1

    .line 328
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    if-nez v6, :cond_0

    .line 329
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    sput-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    .line 330
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 331
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const/4 v7, -0x1

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 332
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 333
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "launch_with"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v6, "nid"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 344
    .end local v0           #deleteIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 345
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x7f09033e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, msg:Ljava/lang/String;
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 348
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    sget-object v7, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, v5, v2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 350
    sput-boolean p2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    .line 351
    sget-object v6, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-virtual {v3, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 352
    sput v11, Lcom/android/OriginalSettings/wifi/WifiSettings;->mStartWith:I

    .line 358
    .end local v2           #msg:Ljava/lang/String;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    sput-boolean p2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    .line 356
    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7f09076b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 98
    sget-boolean v4, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 99
    const-string v4, "WifiStatusReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 103
    const-string v1, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 104
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 105
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiStatusReceiver"

    const-string v4, "WIFI_STATE_ENABLED"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-eqz v1, :cond_3

    .line 107
    sput-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 108
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_2

    .line 109
    sput-boolean v3, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 110
    invoke-direct {p0, v0, v3}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    .line 300
    :cond_2
    :goto_0
    return-void

    .line 113
    :cond_3
    sput-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 114
    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 116
    :cond_4
    if-ne v1, v3, :cond_2

    .line 117
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "WifiStatusReceiver"

    const-string v3, "WIFI_STATE_DISABLED"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_5
    sput-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 119
    sput-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 120
    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 122
    :cond_6
    const-string v4, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 123
    const-string v1, "show_dialog_once"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    const-string v0, "show_dialog_once"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Want to show AP LIST:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_7
    sput-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 127
    if-nez v0, :cond_2

    .line 128
    sput-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    goto :goto_0

    .line 131
    :cond_8
    sget-boolean v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    if-eqz v1, :cond_2

    .line 132
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_cmcc_manual"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    .line 138
    :goto_1
    if-nez v3, :cond_2

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 142
    :cond_9
    sput-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 143
    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    :cond_a
    move v3, v2

    .line 135
    goto :goto_1

    .line 146
    :cond_b
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 147
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    sput-object v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    .line 148
    sget-object v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const-string v1, "wifiInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 150
    if-eqz v1, :cond_d

    .line 151
    sget-boolean v4, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 152
    const-string v4, "WifiStatusReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConnectionInfo.SSID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v4, "WifiStatusReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifiInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_c
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#ff"

    const-string v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    const v5, 0x7f100024

    invoke-virtual {p1, v5}, Landroid/content/Context;->setTheme(I)V

    .line 166
    const-string v5, "#DEAD00"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 186
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 156
    :cond_d
    const-string v0, "WifiStatusReceiver"

    const-string v1, "wifiinfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<font color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</font>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-virtual {v5, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 176
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 180
    :cond_f
    const-string v1, "WifiStatusReceiver"

    const-string v3, "Ignore wifi connected toast. Because wifi is not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 192
    :cond_10
    const-string v4, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 193
    const-string v1, "info_type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 195
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 197
    :pswitch_0
    const v0, 0x7f090339

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 200
    :pswitch_1
    const v0, 0x7f0903d6

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 203
    :pswitch_2
    const v0, 0x7f0903d7

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 207
    :pswitch_3
    const-string v1, "visible"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 208
    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 209
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Ignore watchdog notification. Because wifi is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    :cond_11
    invoke-direct {p0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 216
    :pswitch_4
    const v0, 0x7f09033b

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 221
    :cond_12
    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 222
    const-string v0, "WifiStatusReceiver"

    const-string v1, "ACTION_SEC_PICK_WIFI_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "type"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_13

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 226
    :cond_13
    invoke-direct {p0, p1, p2, v2}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 228
    :cond_14
    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 229
    const-string v1, "WifiStatusReceiver"

    const-string v4, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_18

    .line 231
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 232
    const/16 v4, 0xc

    if-eq v1, v4, :cond_15

    const/16 v4, 0xd

    if-ne v1, v4, :cond_16

    :cond_15
    move v1, v3

    .line 234
    :goto_3
    if-eqz v1, :cond_19

    .line 235
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_17

    .line 236
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_16
    move v1, v2

    .line 232
    goto :goto_3

    .line 239
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.OriginalSettings.wifi.WIFI_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 245
    :cond_18
    :goto_4
    invoke-direct {p0, p1, p2, v2}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 242
    :cond_19
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_4

    .line 246
    :cond_1a
    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 247
    const-string v0, "WifiStatusReceiver"

    const-string v1, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "launch_with"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 249
    invoke-direct {p0, p1, p2, v0}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 250
    :cond_1b
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 251
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 252
    invoke-static {}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 253
    const-string v1, "WifiStatusReceiver"

    const-string v4, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    :cond_1c
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mPrioritymode:Z

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitor_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 269
    if-ne v0, v3, :cond_2

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 273
    :cond_1d
    const-string v3, "com.android.OriginalSettings.wifi.wifitimer_alarm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 274
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "WifiStatusReceiver"

    const-string v1, "WifiTimer Broadcast Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.OriginalSettings.wifi.WifiTimerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 278
    :cond_1f
    const-string v3, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    const-string v1, "nid"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 280
    sget-boolean v3, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v3, :cond_20

    const-string v3, "WifiStatusReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> ACTION_SEC_NOTIFICATION_CANCEL nid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_20
    const v3, 0x7f09033d

    if-ne v1, v3, :cond_21

    .line 282
    sput-boolean v2, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    goto/16 :goto_0

    .line 283
    :cond_21
    if-nez v1, :cond_2

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/wifi/WifiStatusReceiver;->updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method